using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using com.bluechip.crm.Interfaces;
using MySql.Data.MySqlClient;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;



public partial class Report : System.Web.UI.Page 
{
    Control control;
    Control controlMenu;
    private string SavedControlVirtualPath
    {
        get
        {
            if (ViewState["saved"] == null ||
                (string)ViewState["saved"] == string.Empty)
                return null;
            return (string)ViewState["saved"];
        }
        set
        {
            ViewState["saved"] = value;
        }
    }
    private string SavedMenuVirtualPath
    {
        get
        {
            if (ViewState["savedMenu"] == null ||
                (string)ViewState["savedMenu"] == string.Empty)
                return null;
            return (string)ViewState["savedMenu"];
        }
        set
        {
            ViewState["savedMenu"] = value;
        }
    }

    private Control ReloadControl()
    {
        ControlContainer.Controls.Clear();
        control = null;
        if (SavedControlVirtualPath != null)
        {
            control = this.LoadControl(SavedControlVirtualPath);

            if (control != null)
            {
                control.ID = control.GetType().Name;
                ControlContainer.Controls.Add(control);
            }
        }
        return control;
    }

    private Control ReloadMenuControl()
    {
        MySqlConnection con = new MySqlConnection();
        //MenuPlaceHolder.Controls.Clear();
        controlMenu = null;
        if (SavedMenuVirtualPath != null)
        {
            controlMenu = this.LoadControl(SavedMenuVirtualPath);

            if (controlMenu != null)
            {
                controlMenu.ID = controlMenu.GetType().Name;
               // MenuPlaceHolder.Controls.Add(controlMenu);
            }
        }
        return controlMenu;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
           //lblname.Text = Session["uname"].ToString();
       
        LoadGrid();
        LoadBalance();
        control = ReloadControl();
        controlMenu = ReloadMenuControl();

    }

  

    private void LoadGrid()
    {
        string path = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        SqlConnection con = new SqlConnection(path);
        SqlCommand cmd2 = new SqlCommand("select Id, Description, Amount, Date from Expenses order by Date DESC", con);
        con.Open();
        SqlDataReader reader2 = cmd2.ExecuteReader();

        grdExisting.DataSource = reader2;
        grdExisting.DataBind();

        reader2.Close();
        con.Close();
    }

    private void LoadBalance()
    {
        string path = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        SqlConnection con = new SqlConnection(path);
        SqlCommand cmd2 = new SqlCommand("select sum(Amount) Amount  from Purse", con);
        con.Open();
        SqlDataReader reader2 = cmd2.ExecuteReader();
        if (reader2.Read())
        {
            lblBalance.Text = reader2["Amount"].ToString();
        }
        reader2.Close();
        con.Close();
    }

    
    protected void btnExisting_Click(object sender, EventArgs e)
    {
        LoadExisting();
    }
    private void LoadExisting()
    {
        control = ReloadControl();
        IScreenDefault screen = (IScreenDefault)ControlContainer.FindControl(control.GetType().Name);
        screen.LoadExisting();
       // btnSave.Enabled = false;
    }
    
    protected void btnSave_Click(object sender, EventArgs e)
    {
        control = this.LoadControl(SavedControlVirtualPath);
        IScreenDefault screen = (IScreenDefault)ControlContainer.FindControl(control.GetType().Name);
        bool result = screen.Submit();
    }
    protected void btnNew_Click(object sender, EventArgs e)
    {
        SavedControlVirtualPath = "~/Controls/Notification/NotificationType.ascx";
        Control control = (Control)ReloadControl();
        IScreenDefault screen = (IScreenDefault)control;
        screen.ShowNew();
       // btnSave.Enabled = true;
    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void lnkMembership_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Deposit.aspx");
        clearActiveLink();
        lnkMembership.CssClass = "active-link";
    }
    protected void lnkPartner_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Balance.aspx");
        clearActiveLink();
        lnkPartner.CssClass = "active-link";
    }
    protected void lnkProgramme_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Expenditure.aspx");
        clearActiveLink();
        lnkProgramme.CssClass = "active-link";
    }
    protected void lnkReport_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Report.aspx");
        clearActiveLink();
        lnkReport.CssClass = "active-link";
    }
    protected void lnkSetup_Click(object sender, EventArgs e)
    {
        //controlMenu = ReloadMenuControl();
        //IMenu screen = (IMenu)ControlContainer.FindControl(controlMenu.GetType().Name);
        //screen.LoadMenu("Admin");
        clearActiveLink();
        lnkSetup.CssClass = "active-link";
    }
    
    protected void lnkAlert_Click(object sender, EventArgs e)
    {
        //controlMenu = ReloadMenuControl();
        //IMenu screen = (IMenu)ControlContainer.FindControl(controlMenu.GetType().Name);
        //screen.LoadMenu("Alert");
        clearActiveLink();
      //lnkAlert.CssClass = "active-link";
    }

    private void clearActiveLink()
    {
        //lnkAlert.CssClass = "";
       // lnkCommunication.CssClass = "";
        lnkSetup.CssClass = "";
        lnkReport.CssClass = "";
        lnkProgramme.CssClass = "";
        lnkPartner.CssClass = "";
        lnkMembership.CssClass = "";
    }
    
    
    protected void grdExisting_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            int Id = Convert.ToInt32(e.CommandArgument);
            string cmd = e.CommandName;


            if (cmd.Equals("Del"))
            {
                string path = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
                SqlConnection con = new SqlConnection(path);
                SqlCommand DelCommand = new SqlCommand("Delete Expenses where Id = @Id", con);
                DelCommand.Parameters.AddWithValue("@Id", Id);
                con.Open();

                DelCommand.ExecuteNonQuery();
                LoadGrid();
                string script = "<script>alert('Records deleted successfully! ')</script>";
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Added", script);
                con.Close();

            }
            else if (cmd.Equals("Edt"))
            {
                
                
               
            }
        }
        catch (Exception ex)
        {
            string script = "<script>alert('an error occured while processing request, Please try again! ')</script>";
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Added", script);
        }
    }
    protected void ddlCategory_SelectedIndexChanged(object sender, Telerik.Web.UI.DropDownListEventArgs e)
    {
        
    }

    
    protected void grdExisting_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void grdExisting_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
      //  grdExisting.PageIndex = e.NewPageIndex;
       // BindPagingGrid();
    }
  
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ClosingStock.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/OpeningStock.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/CardStockIn.aspx");
    }
    protected void txtDateS_SelectedDateChanged(object sender, Telerik.Web.UI.Calendar.SelectedDateChangedEventArgs e)
    {
        string path = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        SqlConnection con = new SqlConnection(path);
        SqlCommand cmd2 = new SqlCommand("select Id, Description, Amount, Date from Expenses where Date =@Date", con);
        cmd2.Parameters.AddWithValue("@Date", SqlDbType.NVarChar).Value = txtDateS.SelectedDate;
        con.Open();
        SqlDataReader reader2 = cmd2.ExecuteReader();

        grdExisting.DataSource = reader2;
        grdExisting.DataBind();

        reader2.Close();
        con.Close();



        string path2 = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        SqlConnection con2 = new SqlConnection(path);
        SqlCommand cmd3 = new SqlCommand("select sum(Amount) Amount from Expenses where Date = @Date", con2);
        cmd3.Parameters.AddWithValue("@Date", SqlDbType.NVarChar).Value = txtDateS.SelectedDate;
        con2.Open();
        SqlDataReader reader3 = cmd3.ExecuteReader();
        if (reader3.Read())
        {
            DateTime getDate = Convert.ToDateTime(txtDateS.SelectedDate);
            string convertedDate = getDate.ToShortDateString();

            lblBal.Text = "";
            lblBal.Text = "Total amount spent from myPurse on " + convertedDate + " is " + reader3["Amount"].ToString() + " Naira ";
        }
       
        reader3.Close();
        con2.Close();
    }
    protected void txtDate2_SelectedDateChanged(object sender, Telerik.Web.UI.Calendar.SelectedDateChangedEventArgs e)
    {
        string path = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        SqlConnection con = new SqlConnection(path);
        SqlCommand cmd = new SqlCommand("select Id, Description, Amount, Date from Expenses where Date between '"+txtDate1.SelectedDate+"' and '"+txtDate2.SelectedDate+"'", con);
        con.Open();
        SqlDataReader reader = cmd.ExecuteReader();
        grdExisting.DataSource = reader;
        grdExisting.DataBind();

        reader.Close();
        con.Close();


        string path2 = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        SqlConnection con2 = new SqlConnection(path);
        SqlCommand cmd2 = new SqlCommand("select sum(Amount) Amount from Expenses where Date between '" + txtDate1.SelectedDate + "' and '" + txtDate2.SelectedDate + "'", con2);
        con2.Open();
        SqlDataReader reader2 = cmd2.ExecuteReader();
        if (reader2.Read())
        {
            DateTime getDate = Convert.ToDateTime(txtDate1.SelectedDate);
            string convertedDate1 = getDate.ToShortDateString();

            DateTime getDate2 = Convert.ToDateTime(txtDate2.SelectedDate);
            string convertedDate2 = getDate2.ToShortDateString();
            lblBal.Text = "";
            lblBal.Text = "Total amount spent from myPurse between " + convertedDate1 + " and " + convertedDate2 + " is " + reader2["Amount"].ToString() + " Naira ";
        }
        reader2.Close();
        con2.Close();
    }
}