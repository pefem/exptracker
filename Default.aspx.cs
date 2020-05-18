using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data.SqlClient;

public partial class Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            string path = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
            SqlConnection con = new SqlConnection(path);
            SqlCommand cmd = new SqlCommand("select Phone, Pin  from login where Phone =@Phone and Pin = @Pin", con);
            cmd.Parameters.AddWithValue("@Phone", txtUserName.Text);
            cmd.Parameters.AddWithValue("@Pin", txtPassword.Text);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                Response.Redirect("~/Home.aspx");
            }
            else
            {
                string scripts = "<script>alert('Invalid login credential! Please try again')</script>";
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Added", scripts);
            }

            con.Close();

        }
        catch (Exception ex)
        {
            string scripts = "<script>alert('Error processing! Please ensure that your wamp server is on')</script>";
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Added", scripts);
        }
    }
  
    
    
}