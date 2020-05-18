<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="css/social.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style4
        {
            font-family: Verdana;
            font-size: 10px;
        }
        .style5
        {
            font-family: Verdana;
        }
        .auto-style1 {
            color: #FFFFFF;
            font-size: xx-large;
        }
        </style>
</head>
<body>
     <form id="form1" runat="server">
    <div id ="content">
        <div id = "content_main">
            <p class="style4">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/images/FrontText.png" />
            </p>
    </div>
    <div id = "content_sub">
     <p>&nbsp;&nbsp;</p>
    <asp:Panel ID="Panel1" runat="server" Width="400px" 
    style="text-align: center; margin-left: 175px;" BorderStyle="Groove" 
            BorderColor="#3795D3" BorderWidth="1px" Height="450px">
        <asp:Panel ID="Panel2" runat="server" BackImageUrl="~/css/Login.gif" 
            Height="45px" BackColor="#098ED1">
            <span class="auto-style1"><strong>myPurse</strong></span><br />
        </asp:Panel>
        <br />
        <br />
        <br />
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Password.gif" />
        <br />
        <table style="width:100%; height: 150px;">
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style4">
                    Username</td>
                <td>
                    <asp:TextBox ID="txtUserName" runat="server" BorderColor="#417CAB" 
                        BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Height="26px" 
                        style="font-size: 10px" Width="250px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style4">
                    Password</td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" BorderColor="#417CAB" 
                        BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Height="30px" 
                        Width="250px" TextMode="Password" style="font-size: 10px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    <asp:CheckBox ID="chkRememberMe" runat="server" BorderColor="#417CAB" 
                        BorderStyle="Solid" BorderWidth="1px" 
                        style="font-family: Verdana; font-size: 10px" Text="Remember me" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnLogin" runat="server" CssClass="button" Text="Login" 
                        onclick="btnLogin_Click" BackColor="#3795D3" BorderColor="#3795D3" 
                        ForeColor="White" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
    </asp:Panel>
    </div>
    </div>
   
    </form>
     <p></p>
     </body>
</html>
