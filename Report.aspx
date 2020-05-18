<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Report.aspx.cs" Inherits="Report" enableEventValidation="true" %>

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
 
<title>myPurse Expenditure</title>
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
        .auto-style24 {
            color: #800000;
        }
        .auto-style25 {
            font-size: large;
        }
    div.RadPicker table.rcSingle .rcInputCell{padding-right:0}
        div.RadPicker table.rcSingle .rcInputCell{padding-right:0}.RadInput{vertical-align:middle}
        .RadInput_Default{font:12px "segoe ui",arial,sans-serif}.RadInput{vertical-align:middle}.RadInput_Default{font:12px "segoe ui",arial,sans-serif}
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
                    <h1 class="auto-style1">&nbsp;myPurse Expenditure Log</h1>
                    <p>
                        &nbsp;<p>
                        &nbsp;<p>&nbsp;</p>
                    <p class="auto-style24"><strong>Current Purse Balance : <span class="auto-style25">N </span></strong>
                        <asp:Label ID="lblBalance" runat="server" style="font-size: large; font-weight: 700;"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
                    <p class="auto-style24">&nbsp;</p>
                    <br />
                    View by Specific Date:<telerik:RadDatePicker ID="txtDateS" Runat="server" WrapperTableCaption="" AutoPostBack="True" OnSelectedDateChanged="txtDateS_SelectedDateChanged">
<Calendar UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" EnableWeekends="True" FastNavigationNextText="&amp;lt;&amp;lt;"></Calendar>

<DateInput DisplayDateFormat="M/d/yyyy" DateFormat="M/d/yyyy" LabelWidth="40%" AutoPostBack="True">
<EmptyMessageStyle Resize="None"></EmptyMessageStyle>

<ReadOnlyStyle Resize="None"></ReadOnlyStyle>

<FocusedStyle Resize="None"></FocusedStyle>

<DisabledStyle Resize="None"></DisabledStyle>

<InvalidStyle Resize="None"></InvalidStyle>

<HoveredStyle Resize="None"></HoveredStyle>

<EnabledStyle Resize="None"></EnabledStyle>
</DateInput>

<DatePopupButton ImageUrl="" HoverImageUrl=""></DatePopupButton>
                                    </telerik:RadDatePicker>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Or&nbsp;
                    <br />
                    <br />
                    <br />
                    <br />
                    From Date: <telerik:RadDatePicker ID="txtDate1" Runat="server" WrapperTableCaption="">
                                    </telerik:RadDatePicker>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; To Date: <telerik:RadDatePicker ID="txtDate2" Runat="server" WrapperTableCaption="" AutoPostBack="True" OnSelectedDateChanged="txtDate2_SelectedDateChanged">
<Calendar UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" EnableWeekends="True" FastNavigationNextText="&amp;lt;&amp;lt;"></Calendar>

<DateInput DisplayDateFormat="M/d/yyyy" DateFormat="M/d/yyyy" LabelWidth="40%" AutoPostBack="True">
<EmptyMessageStyle Resize="None"></EmptyMessageStyle>

<ReadOnlyStyle Resize="None"></ReadOnlyStyle>

<FocusedStyle Resize="None"></FocusedStyle>

<DisabledStyle Resize="None"></DisabledStyle>

<InvalidStyle Resize="None"></InvalidStyle>

<HoveredStyle Resize="None"></HoveredStyle>

<EnabledStyle Resize="None"></EnabledStyle>
</DateInput>

<DatePopupButton ImageUrl="" HoverImageUrl=""></DatePopupButton>
                                    </telerik:RadDatePicker>
                                    &nbsp;<br />
                        <p></p>
                    <p></p>
                    <asp:Panel ID="gridPanel" runat="server" BorderColor="#003366" BorderStyle="Solid" BorderWidth="1px" Direction="LeftToRight" Height="222px" ScrollBars="Both">
                        <cc1:PagingGridView ID="grdExisting" runat="server" AutoGenerateColumns="False" CssClass="grid" EmptyDataText="No item in this category!" onrowcommand="grdExisting_RowCommand" PagerType="Custom" PageSize="200" Width="100%" OnPageIndexChanging="grdExisting_PageIndexChanging" OnSelectedIndexChanged="grdExisting_SelectedIndexChanged">
            <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" Visible="false" />
             
                  <asp:BoundField DataField="Description" HeaderText="Description" />
                <asp:BoundField DataField="Amount" HeaderText="Amount" />
                
                <asp:BoundField DataField="Date" HeaderText="Date" />

              
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
                        <asp:Label ID="lblBal" runat="server" style="font-size: large; color: #990000;"></asp:Label>
                    </p>
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