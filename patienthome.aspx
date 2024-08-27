<%@ Page Title="" Language="C#" MasterPageFile="~/patient.master" AutoEventWireup="true" CodeFile="patienthome.aspx.cs" Inherits="patienthome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>


<table >
    <tr>
        <td>
        WELCOME
        </td>
        <td>
            <asp:Label ID="lblpat" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
       
        <td >
            <asp:Label ID="Label1" runat="server" Text="Date"></asp:Label>
        </td>
        <td >
            <asp:Label ID="lbldate" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
   <tr>
   
        <td valign="top">
            <asp:Label ID="Label5" runat="server" Text="Time"></asp:Label>
        </td>
        <td valign="top">
            <asp:Label ID="lbltime" runat="server" Text="Label"></asp:Label>
        </td>
   </tr>
   <tr>
    <td>
        
        Patient&#39;s Photo</td>
    <td>
        <asp:Image ID="Image1" runat="server" Height="118px" Width="149px" />
    </td>
    </tr>
</table>

</center>
</asp:Content>

