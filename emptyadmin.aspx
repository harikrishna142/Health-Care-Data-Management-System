<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="emptyadmin.aspx.cs" Inherits="emptyadmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
    .auto-style2 {
        width: 182px;
    }
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 545px; height: 76px;">
    <tr>
    <td >
        <asp:Label ID="Label2" runat="server" Text="WELCOME"></asp:Label>
    </td>
    <td >
        <asp:Label ID="lbldoc" runat="server" Text="ADMIN!!!"></asp:Label>
    </td>
    <td ></td>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Date"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lbldate" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
    <td >
        
    </td>
    <td >
        
    </td>
    <td ></td>
        <td>
            <asp:Label ID="Label5" runat="server" Text="Time"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lbltime" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
</table>
<br />
<table style="width: 565px">
    <tr>
        <td class="auto-style2"></td>
        <td>
            <asp:Image ID="Image1" runat="server" Height="163px" 
                ImageUrl="~/img/adminhome.png" Width="177px" />
        </td>
    </tr>
</table>
</asp:Content>

