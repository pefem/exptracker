using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using com.bluechip.crm.Interfaces;

public partial class Controls_Menu_uc_Membership : System.Web.UI.UserControl, IMenu
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    public void LoadMenu(string Item)
    {
        switch (Item)
        {
            case ("Member"):
                HideAll();
                pnMembership.Visible = true;
                break;
            case("Partner"):
                HideAll();
                pnPartner.Visible = true;
                break;
            case ("Programme"):
                HideAll();
                pnProgramme.Visible = true;
                break;
            case ("Report"):
                HideAll();
                pnReport.Visible = true;
                break;
            case ("Admin"):
                HideAll();
                pnAdmin.Visible = true;
                break;
            case ("Communication"):
                HideAll();
                pnCommunication.Visible = true;
                break;
            case ("Alert"):
                HideAll();
                pnAlert.Visible = true;
                break;
            default:
                break;
        }
    }
    private void HideAll()
    {
        pnPartner.Visible = false;
        pnMembership.Visible = false;
        pnProgramme.Visible = false;
        pnReport.Visible = false;
        pnAdmin.Visible = false;
        pnCommunication.Visible = false;
        pnAlert.Visible = false;
    }
}