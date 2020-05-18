<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Home.aspx.cs" Inherits="Home" enableEventValidation="true" %>

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
 
<title>Payment portal web software</title>
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
        </style>
</head>
<body>
<div id="main-div">
<form id="TemplateForm" runat="server">
	<div id="header-div">
		<div id="top-wrapper-div">
            <div id="title-wrapper-div">
				<div id="logo-div"><span class="style2">
                    <br />
                	
                    myPurse web version 1.0</span></div>
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
                        onclick="lnkReport_Click" CausesValidation="False" Visible="true" /></li>
                <li class="top-menu-li"><asp:LinkButton Text="ADMIN" runat="server" ID="lnkSetup" 
                        onclick="lnkSetup_Click" CausesValidation="False" Visible="False" /></li>
               
              
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
                    <div>
                   &nbsp;&nbsp;<br />
&nbsp;
                        <br />
                        <br />
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
                    <h1 class="auto-style1">&nbsp;myPurse web version 1.0 </h1>
                    <p class="auto-style1">&nbsp;</p>
                    <p class="auto-style1">&nbsp;</p>
                    <p class="auto-style1">&nbsp;</p>
                    <p class="auto-style1">&nbsp;</p>
                    <p class="auto-style1">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/globe-earth-animation-9.gif" />
                    </p>
                    <p>
                        &nbsp;<p>
                        &nbsp;</p>
                    <p>
                        &nbsp;</p>
                    <p>
                        &nbsp;</p>
	     		</div>
        </div>
    </div>
</form>
</div> 
    <p>
        </p>
</body>
</html>