<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Deposit.aspx.cs" Inherits="Deposit" enableEventValidation="true" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Charting" tagprefix="telerik" %>
<%@ Register assembly="GridViewPaging.Controls" namespace="GridViewPaging.Controls" tagprefix="cc1" %>
<%@ Register namespace="GridViewPaging.Controls" tagprefix="Controls" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="StyleSheet/layout.css" rel="stylesheet" type="text/css" />
    <link href="StyleSheet/content.css" rel="stylesheet" type="text/css" />
 
<title>myPurse Deposit</title>
    <script src="Scripts/jquery-1.6.2.min.js" type="text/javascript"></script>
    <script src="Scripts/tipsy-0.1.7/javascripts/jquery.tipsy.js" type="text/javascript"></script>
    <script src="Scripts/init.js" type="text/javascript"></script>
    <style type="text/css">
        .style1
        {
            font-size: xx-small;
        }
        .style2
        {
            color: #FFFFFF;
            font-weight: 700;
        }
        .auto-style1 {
            text-align: center;
            }
        .auto-style9 {
            width: 133px;
        }
        .auto-style12 {
        }
        .auto-style21 {
            width: 201px;
        }
        .auto-style23 {
            width: 397px;
        }
        .auto-style24 {
            color: #800000;
        }
        .auto-style25 {
            font-size: large;
        }
    </style>
</head>
<body>
<div id="main-div">
<form id="TemplateForm" runat="server">
	<telerik:RadStyleSheetManager ID="RadStyleSheetManager1" runat="server">
    </telerik:RadStyleSheetManager>
	<div id="header-div">
		<div id="top-wrapper-div">
            <div id="title-wrapper-div">
				<div id="logo-div"><span class="style2">
                    <br />
                	
                    </span>&nbsp;<span class="style2">myPurse web version 1.0</span></div>
                <div id="title-div" class="style1">
                	
                </div>
            </div>
			<div id="account-info-div">
            	<ul id="account-info-ul">
                    <li><a href="javascript:void()">&nbsp;<asp:Label ID="lblname" runat="server"></asp:Label>
&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" OnClick="LinkButton1_Click">Logout</asp:LinkButton>
&nbsp;<img src="Images/account_more.png" /></a></li>
                    <li></li>
                    <li>|</li>
                </ul>
            </div>
       </div>
    </div>
       <div id="top-menu-div"> 
       	<div id="top-menu-wrapper">
			<ul id="top-menu-ul">
                <li class="top-menu-li top-link-left"><asp:LinkButton Text="myPurse Deposit" 
                        runat="server" class="top-link-left" ID="lnkMembership" 
                        onclick="lnkMembership_Click" CausesValidation="False" /></li>
                <li class="top-menu-li"><asp:LinkButton Text="myPurse Balance" runat="server" 
                        ID="lnkPartner" onclick="lnkPartner_Click" CausesValidation="False" /></li>
                <li class="top-menu-li"><asp:LinkButton Text="myPurse Expenditure" runat="server" 
                        ID="lnkProgramme" onclick="lnkProgramme_Click" CausesValidation="False" /></li>
                <li class="top-menu-li"><asp:LinkButton Text="myPurse Report" runat="server" ID="lnkReport" 
                        onclick="lnkReport_Click" CausesValidation="False" Visible="TRUE" /></li>
                <li class="top-menu-li"><asp:LinkButton Text="ADMIN" runat="server" ID="lnkSetup" 
                        onclick="lnkSetup_Click" CausesValidation="False" Visible="false" /></li>
               
              
			</ul>
</div>
         <div id="search-div">
           <input type="text" name="liveSearch" id="liveSearch" class="live-search" value="Live Search" /></div> 
	   </div> 
       <div id="top-separator-div"></div>
       <div id="content-main-div">
       		<div id="left-pane-div">
            	<div id="vmenu-div">
                        <div class="inbox-spacer">
                            <p>&nbsp;</p>
                            <p>&nbsp;</p>
                           </div>
                </div>
                <div class="tray-separator"></div>
            	<div id="vtray-div">
                	<div id="vtray-item"><a href="javascript:void()"><img src="Images/archive.png" />My Activity Logs</a></div>
                    <div id="vtray-item"><a href="javascript:void()"><img style="width:14px; height:14px;" src="images/bin_closed.png" />Trash</a></div>
                </div>
                <div id="notice-bar-div">
                	<ul id="notice-bar-ul">
                        <li class="notice-a-left bottom-toolbar-curve"><a id="home-icon-a" title="" class="bottom-menu-icons bottom-toolbar-curve" href="javascript:void(0)"><img src="images/home.png" /></a></li>
                        <li><a class="bottom-menu-icons" href="javascript:void(0)" title="sup"><img src="Images/gear.png" /></a></li>
                        <li><a class="bottom-menu-more" href="javascript:void(0)"><img src="Images/reports-stack.png" /><img src="images/more-icon.png" style="width:10px; height:13px;" /></a></li>
                        <li><a class="bottom-menu-icons" href="javascript:void(0)"><img src="Images/help.png" /></a></li>
                        <li><a class="bottom-menu-icons" href="javascript:void(0)"><img src="Images/balloons.png" /></a></li>
                        <li><a class="bottom-menu-icons" href="javascript:void(0)"><img src="Images/onebit_24.png"/></a></li>
                    </ul>
                    <div class="notice-red-div" id="notice-red-div"></div>
                </div>
            </div>
          <div id="right-pane-div">
	            <div id="tool-bar-div">
	            </div>
	            <div id="grid-div">
	        		<asp:PlaceHolder ID="ControlContainer" runat="server"></asp:PlaceHolder>
	     		    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <p>
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                    </p>
                    <h1 class="auto-style1">&nbsp;myPurse Deposit </h1>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
                    <p>
                    &nbsp;<asp:Panel ID="myPanel" runat="server" BorderColor="#006699" BorderStyle="Solid" BorderWidth="1px" Height="133px">

                       
                        <table style="width:100%;">
                            <tr>
                                <td style="text-align: right" class="auto-style23">&nbsp;</td>
                                <td class="auto-style21">
                                    &nbsp;</td>
                                <td class="auto-style9">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style23" style="text-align: right">&nbsp;</td>
                                <td class="auto-style21">
                                    <asp:TextBox ID="txtId" runat="server" Visible="False"></asp:TextBox>
                                </td>
                                <td class="auto-style9">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style23" style="text-align: right">Amount</td>
                                <td class="auto-style21">
                                    <telerik:RadTextBox ID="txtAmount" Runat="server">
                                    </telerik:RadTextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAmount" Display="Dynamic" ErrorMessage="The quantity field is reguired" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                </td>
                                <td class="auto-style9">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style23" style="text-align: right">Date</td>
                                <td class="auto-style21">
                                    <telerik:RadDatePicker ID="txtDate" Runat="server" WrapperTableCaption="">
                                    </telerik:RadDatePicker>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDate" Display="Dynamic" ErrorMessage="Entry date field is required" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                </td>
                                <td class="auto-style9">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style23" style="text-align: right">&nbsp;</td>
                                <td class="auto-style21">
                                    &nbsp;</td>
                                <td class="auto-style9">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style12" colspan="4">
                                    <telerik:RadButton ID="btnAdd" runat="server" OnClick="btnAdd_Click" style="top: 2px; left: 0px; height: 22px" Text="Add">
                                    </telerik:RadButton>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<telerik:RadButton ID="btnSave" runat="server" Enabled="False" OnClick="btnSave_Click1" Text="Save">
                                    </telerik:RadButton>
                                    &nbsp;&nbsp;&nbsp;&nbsp;<telerik:RadButton ID="btnCancel" runat="server" Enabled="False" OnClick="btnCancel_Click" Text="Cancel">
                                    </telerik:RadButton>
                                </td>
                            </tr>
                        </table>
                             </asp:Panel>
                       <p>&nbsp;</p>
                    <p class="auto-style24"><strong>Current Purse Balance : <span class="auto-style25">N </span></strong>
                        <asp:Label ID="lblBalance" runat="server" style="font-size: large; font-weight: 700;"></asp:Label>
                    </p>
                        <asp:Panel ID="gridPanel" runat="server" BorderColor="#003366" BorderStyle="Solid" BorderWidth="1px" Direction="LeftToRight" Height="222px" ScrollBars="Both">
                        <cc1:PagingGridView ID="grdExisting" runat="server" AutoGenerateColumns="False" CssClass="grid" EmptyDataText="No item in this category!" onrowcommand="grdExisting_RowCommand" PagerType="Custom" PageSize="200" Width="100%" OnPageIndexChanging="grdExisting_PageIndexChanging" OnSelectedIndexChanged="grdExisting_SelectedIndexChanged">
            <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" Visible="false" />
             
                
                <asp:BoundField DataField="Amount" HeaderText="Amount" />
                
                <asp:BoundField DataField="Date" HeaderText="Date" />

                
                <asp:TemplateField>
                    <ItemTemplate>
                       <asp:LinkButton ID="LinkButtonEdit" runat="server" CausesValidation="false" CommandArgument='<%# Bind("Id") %>' CommandName="Edt" ForeColor="Maroon" Text="Edit" ToolTip="Edit"></asp:LinkButton>
                    </ItemTemplate>
                    <ItemStyle Width="1%" />
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                         <asp:LinkButton ID="LinkButtonDelete" runat="server" CausesValidation="false" CommandArgument='<%# Bind("Id") %>' CommandName="Del" ForeColor="Maroon" onclientclick="return confirm(&quot;Do you want to delete Entry?&quot;)" Text="Delete" ToolTip="Delete"></asp:LinkButton>
                            
                           
                    </ItemTemplate>
                    <ItemStyle Width="1%" />
                </asp:TemplateField>
                
            </Columns>
        </cc1:PagingGridView>
                            </asp:Panel>
                    <p>
                        &nbsp;</p>
                    <p>
                        &nbsp;</p>
                    <p>
                        &nbsp;</p>
                     
                    <p class="auto-style1">&nbsp;</p>
                    <p>
                        &nbsp;</p>
                    <p>&nbsp;</p>
                    <p></p>
                    <p></p>
                    <p></p>
                    <p></p>
                    <p></p>
                    <p></p>
	     		</div>
        </div>
    </div>
</form>
</div> 
    <p>
        </p>
</body>
</html>