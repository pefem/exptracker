using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using com.bluechip.crm.Interfaces;
using MySql.Data.MySqlClient;
using System.Data;



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
         //  lblname.Text = Session["uname"].ToString();
       
      //  LoadGrid();
        //SavedControlVirtualPath = "~/Controls/Notification/NotificationType.ascx";
        //SavedMenuVirtualPath = "~/Controls/Menu/uc_Membership.ascx";

        control = ReloadControl();
        controlMenu = ReloadMenuControl();

    }

   

    private void LoadGrid()
    {
        DateTime getDate = Convert.ToDateTime(txtDate.SelectedDate);
        string convertedDate = getDate.ToShortDateString();

        MySqlConnection con2 = new MySqlConnection("Data Source=localhost;port=3306;Initial Catalog=smartpro;User Id=root;password=");
        MySqlCommand cmd2 = new MySqlCommand("select CardName, Date, sum(Quantity) Quantity, Sum(Amount) Amount from bricksales  where Date = @Date group by CardName", con2);
        cmd2.Parameters.AddWithValue("@Date", convertedDate);
        con2.Open();
        MySqlDataReader reader2 = cmd2.ExecuteReader();

       // grdExisting.DataSource = VirtualItemCount = GetRowCount();
        //BindPagingGrid();
       // grdExisting.DataBind();

       grdExisting.DataSource = reader2;
        grdExisting.DataBind();

        reader2.Close();
        con2.Close();
    }

    //private void BindPagingGrid()
    //{
    //    grdExisting.DataSource = GetDataPage(grdExisting.PageIndex,
    //    grdExisting.PageSize, grdExisting.OrderBy);
    //    grdExisting.DataBind();
    //}
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
        Response.Redirect("~/Cards.aspx");
        clearActiveLink();
        lnkMembership.CssClass = "active-link";
    }
    protected void lnkPartner_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/BrickSales.aspx");
        clearActiveLink();
        lnkPartner.CssClass = "active-link";
    }
    protected void lnkProgramme_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Pay.aspx");
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
    //protected void btnAdd_Click(object sender, EventArgs e)
    //{
    //    MySqlConnection con = new MySqlConnection("Data Source=localhost;port=3306;Initial Catalog=smartpro;User Id=root;password=");
    //    MySqlCommand cmd = new MySqlCommand("insert into category(Name)values(@Name)", con);

    //    cmd.Parameters.AddWithValue("@Name", txtName.Text);
    //    con.Open();
    //    cmd.ExecuteNonQuery();
    //    txtName.Text = "";
    //}
   
    
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
    protected void Button1_Click1(object sender, EventArgs e)
    {
        LoadGrid();


        DateTime getDate = Convert.ToDateTime(txtDate.SelectedDate);
        string convertedDate = getDate.ToShortDateString();

        MySqlConnection con2 = new MySqlConnection("Data Source=localhost;port=3306;Initial Catalog=smartpro;User Id=root;password=");
        MySqlCommand cmd2 = new MySqlCommand("select Sum(Amount) Amount from bricksales  where Date = @Date", con2);
        cmd2.Parameters.AddWithValue("@Date", convertedDate);
        con2.Open();
        MySqlDataReader reader2 = cmd2.ExecuteReader();
        if (reader2.Read())
        {
            lblTotal.Text = reader2["Amount"].ToString();
        }
        reader2.Close();
        con2.Close();
    }
}