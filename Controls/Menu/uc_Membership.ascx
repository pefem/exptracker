<%@ Control Language="C#" AutoEventWireup="true" CodeFile="uc_Membership.ascx.cs" Inherits="Controls_Menu_uc_Membership" %>
<asp:Panel ID="pnMembership" runat="server" Visible="true">

 <asp:Label CssClass="left-menu-title" Text="MEMBERSHIP MENU" runat="server" />
    <ul class="vmenu-ul">
        <li><asp:Image ID="Image1" runat="server" ImageUrl="~/Images/reverse_blue.png" /><asp:LinkButton id="employeesLinkCheck" Text="Enrollment" runat="server" />
	    <ul>
	        <li class="vmenu-selected"><asp:Image ID="Image3" runat="server" ImageUrl="~/Images/toggle-small-expand.png" /><asp:LinkButton Text="Individual" runat="server" /></li>
	        <li><asp:Image ImageUrl="~/Images/toggle-small-expand.png" ID="Image2" runat="server" /><asp:LinkButton runat="server" Text="Corporate" /></li>
	        <li><asp:Image ID="Image4" runat="server" ImageUrl="~/Images/toggle-small-expand.png" /><asp:LinkButton Text="Benefits" runat="server" /></li>
	        <li><asp:Image ID="Image5" runat="server" ImageUrl="~/Images/toggle-small-expand.png" /><asp:LinkButton Text="Prospect" runat="server" /></li>
	        <li><asp:Image ID="Image6" runat="server" ImageUrl="~/Images/toggle-small-expand.png" /><asp:LinkButton Text="Duplicate Log" runat="server" /></li>
        </ul>
        </li>
        <li><asp:Image ID="Image7" runat="server" ImageUrl="~/Images/toggle-small-expand.png" /><asp:LinkButton Text="Profile" runat="server" /></li>
    </ul>
</asp:Panel>

<asp:Panel ID="pnPartner" runat="server" Visible="False">

 <asp:Label ID="Label1" CssClass="left-menu-title" Text="PARTNER MENU" runat="server" />
    <ul class="vmenu-ul">
        <li><asp:Image ID="Image8" runat="server" ImageUrl="~/Images/reverse_blue.png" /><asp:LinkButton id="LinkButton1" Text="Enrollment" runat="server" />
	    <ul>
	        <li class="vmenu-selected"><asp:Image ID="Image9" runat="server" ImageUrl="~/Images/toggle-small-expand.png" /><asp:LinkButton ID="LinkButton2" Text="Individual" runat="server" /></li>
	        <li><asp:Image ImageUrl="~/Images/toggle-small-expand.png" ID="Image10" runat="server" /><asp:LinkButton ID="LinkButton3" runat="server" Text="Corporate" /></li>
	        <li><asp:Image ID="Image11" runat="server" ImageUrl="~/Images/toggle-small-expand.png" /><asp:LinkButton ID="LinkButton4" Text="Benefits" runat="server" /></li>
	        <li><asp:Image ID="Image12" runat="server" ImageUrl="~/Images/toggle-small-expand.png" /><asp:LinkButton ID="LinkButton5" Text="Prospect" runat="server" /></li>
	        <li><asp:Image ID="Image13" runat="server" ImageUrl="~/Images/toggle-small-expand.png" /><asp:LinkButton ID="LinkButton6" Text="Duplicate Log" runat="server" /></li>
        </ul>
        </li>
        <li><asp:Image ID="Image14" runat="server" ImageUrl="~/Images/toggle-small-expand.png" /><asp:LinkButton ID="LinkButton7" Text="Profile" runat="server" /></li>
    </ul>
</asp:Panel>

<asp:Panel ID="pnProgramme" runat="server" Visible="False">

 <asp:Label ID="Label2" CssClass="left-menu-title" Text="PROGRAMME MENU" runat="server" />
    <ul class="vmenu-ul">
        <li><asp:Image ID="Image15" runat="server" ImageUrl="~/Images/reverse_blue.png" /><asp:LinkButton id="LinkButton8" Text="Enrollment" runat="server" />
	    <ul>
	        <li class="vmenu-selected"><asp:Image ID="Image16" runat="server" ImageUrl="~/Images/toggle-small-expand.png" /><asp:LinkButton ID="LinkButton9" Text="Individual" runat="server" /></li>
	        <li><asp:Image ImageUrl="~/Images/toggle-small-expand.png" ID="Image17" runat="server" /><asp:LinkButton ID="LinkButton10" runat="server" Text="Corporate" /></li>
	        <li><asp:Image ID="Image18" runat="server" ImageUrl="~/Images/toggle-small-expand.png" /><asp:LinkButton ID="LinkButton11" Text="Benefits" runat="server" /></li>
	        <li><asp:Image ID="Image19" runat="server" ImageUrl="~/Images/toggle-small-expand.png" /><asp:LinkButton ID="LinkButton12" Text="Prospect" runat="server" /></li>
	        <li><asp:Image ID="Image20" runat="server" ImageUrl="~/Images/toggle-small-expand.png" /><asp:LinkButton ID="LinkButton13" Text="Duplicate Log" runat="server" /></li>
        </ul>
        </li>
        <li><asp:Image ID="Image21" runat="server" ImageUrl="~/Images/toggle-small-expand.png" /><asp:LinkButton ID="LinkButton14" Text="Profile" runat="server" /></li>
    </ul>
</asp:Panel>

<asp:Panel ID="pnReport" runat="server" Visible="False">

 <asp:Label ID="Label3" CssClass="left-menu-title" Text="REPORT MENU" runat="server" />
    <ul class="vmenu-ul">
        <li><asp:Image ID="Image22" runat="server" ImageUrl="~/Images/reverse_blue.png" /><asp:LinkButton id="LinkButton15" Text="Enrollment" runat="server" />
	    <ul>
	        <li class="vmenu-selected"><asp:Image ID="Image23" runat="server" ImageUrl="~/Images/toggle-small-expand.png" /><asp:LinkButton ID="LinkButton16" Text="Individual" runat="server" /></li>
	        <li><asp:Image ImageUrl="~/Images/toggle-small-expand.png" ID="Image24" runat="server" /><asp:LinkButton ID="LinkButton17" runat="server" Text="Corporate" /></li>
	        <li><asp:Image ID="Image25" runat="server" ImageUrl="~/Images/toggle-small-expand.png" /><asp:LinkButton ID="LinkButton18" Text="Benefits" runat="server" /></li>
	        <li><asp:Image ID="Image26" runat="server" ImageUrl="~/Images/toggle-small-expand.png" /><asp:LinkButton ID="LinkButton19" Text="Prospect" runat="server" /></li>
	        <li><asp:Image ID="Image27" runat="server" ImageUrl="~/Images/toggle-small-expand.png" /><asp:LinkButton ID="LinkButton20" Text="Duplicate Log" runat="server" /></li>
        </ul>
        </li>
        <li><asp:Image ID="Image28" runat="server" ImageUrl="~/Images/toggle-small-expand.png" /><asp:LinkButton ID="LinkButton21" Text="Profile" runat="server" /></li>
    </ul>
</asp:Panel>

<asp:Panel ID="pnAdmin" runat="server" Visible="False">

 <asp:Label ID="Label4" CssClass="left-menu-title" Text="SETUP MENU" runat="server" />
    <ul class="vmenu-ul">
        <li><asp:Image ID="Image29" runat="server" ImageUrl="~/Images/reverse_blue.png" /><asp:LinkButton id="LinkButton22" Text="Enrollment" runat="server" />
	    <ul>
	        <li class="vmenu-selected"><asp:Image ID="Image30" runat="server" ImageUrl="~/Images/toggle-small-expand.png" /><asp:LinkButton ID="LinkButton23" Text="Individual" runat="server" /></li>
	        <li><asp:Image ImageUrl="~/Images/toggle-small-expand.png" ID="Image31" runat="server" /><asp:LinkButton ID="LinkButton24" runat="server" Text="Corporate" /></li>
	        <li><asp:Image ID="Image32" runat="server" ImageUrl="~/Images/toggle-small-expand.png" /><asp:LinkButton ID="LinkButton25" Text="Benefits" runat="server" /></li>
	        <li><asp:Image ID="Image33" runat="server" ImageUrl="~/Images/toggle-small-expand.png" /><asp:LinkButton ID="LinkButton26" Text="Prospect" runat="server" /></li>
	        <li><asp:Image ID="Image34" runat="server" ImageUrl="~/Images/toggle-small-expand.png" /><asp:LinkButton ID="LinkButton27" Text="Duplicate Log" runat="server" /></li>
        </ul>
        </li>
        <li><asp:Image ID="Image35" runat="server" ImageUrl="~/Images/toggle-small-expand.png" /><asp:LinkButton ID="LinkButton28" Text="Profile" runat="server" /></li>
    </ul>
</asp:Panel>

<asp:Panel ID="pnCommunication" runat="server" Visible="False">

 <asp:Label ID="Label5" CssClass="left-menu-title" Text="COMMUNICATION MENU" runat="server" />
    <ul class="vmenu-ul">
        <li><asp:Image ID="Image36" runat="server" ImageUrl="~/Images/reverse_blue.png" /><asp:LinkButton id="LinkButton29" Text="Enrollment" runat="server" />
	    <ul>
	        <li class="vmenu-selected"><asp:Image ID="Image37" runat="server" ImageUrl="~/Images/toggle-small-expand.png" /><asp:LinkButton ID="LinkButton30" Text="Individual" runat="server" /></li>
	        <li><asp:Image ImageUrl="~/Images/toggle-small-expand.png" ID="Image38" runat="server" /><asp:LinkButton ID="LinkButton31" runat="server" Text="Corporate" /></li>
	        <li><asp:Image ID="Image39" runat="server" ImageUrl="~/Images/toggle-small-expand.png" /><asp:LinkButton ID="LinkButton32" Text="Benefits" runat="server" /></li>
	        <li><asp:Image ID="Image40" runat="server" ImageUrl="~/Images/toggle-small-expand.png" /><asp:LinkButton ID="LinkButton33" Text="Prospect" runat="server" /></li>
	        <li><asp:Image ID="Image41" runat="server" ImageUrl="~/Images/toggle-small-expand.png" /><asp:LinkButton ID="LinkButton34" Text="Duplicate Log" runat="server" /></li>
        </ul>
        </li>
        <li><asp:Image ID="Image42" runat="server" ImageUrl="~/Images/toggle-small-expand.png" /><asp:LinkButton ID="LinkButton35" Text="Profile" runat="server" /></li>
    </ul>
</asp:Panel>

<asp:Panel ID="pnAlert" runat="server" Visible="False">

 <asp:Label ID="Label6" CssClass="left-menu-title" Text="ALERTS MENU" runat="server" />
    <ul class="vmenu-ul">
        <li><asp:Image ID="Image43" runat="server" ImageUrl="~/Images/reverse_blue.png" /><asp:LinkButton id="LinkButton36" Text="Enrollment" runat="server" />
	    <ul>
	        <li class="vmenu-selected"><asp:Image ID="Image44" runat="server" ImageUrl="~/Images/toggle-small-expand.png" /><asp:LinkButton ID="LinkButton37" Text="Individual" runat="server" /></li>
	        <li><asp:Image ImageUrl="~/Images/toggle-small-expand.png" ID="Image45" runat="server" /><asp:LinkButton ID="LinkButton38" runat="server" Text="Corporate" /></li>
	        <li><asp:Image ID="Image46" runat="server" ImageUrl="~/Images/toggle-small-expand.png" /><asp:LinkButton ID="LinkButton39" Text="Benefits" runat="server" /></li>
	        <li><asp:Image ID="Image47" runat="server" ImageUrl="~/Images/toggle-small-expand.png" /><asp:LinkButton ID="LinkButton40" Text="Prospect" runat="server" /></li>
	        <li><asp:Image ID="Image48" runat="server" ImageUrl="~/Images/toggle-small-expand.png" /><asp:LinkButton ID="LinkButton41" Text="Duplicate Log" runat="server" /></li>
        </ul>
        </li>
        <li><asp:Image ID="Image49" runat="server" ImageUrl="~/Images/toggle-small-expand.png" /><asp:LinkButton ID="LinkButton42" Text="Profile" runat="server" /></li>
    </ul>
</asp:Panel>