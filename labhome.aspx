<%@ Page Title="" Language="C#" MasterPageFile="~/labassistant.master" AutoEventWireup="true" CodeFile="labhome.aspx.cs" Inherits="labhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 134px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table style="width: 508px; height: 94px;">
    <tr>
    <td class="auto-style2" >
        <asp:Label ID="Label2" runat="server" Text="WELCOME"></asp:Label>
    </td>
    <td >
        <asp:Label ID="lbllabuser" runat="server" Text="Label"></asp:Label>
    </td>
   <td></td>
        <td >
            <asp:Label ID="Label1" runat="server" Text="Date"></asp:Label>
        </td>
        <td >
            <asp:Label ID="lbldate" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
    <td class="auto-style2" >
        <asp:Label ID="Label3" runat="server" Text="Lab Assistant ID"></asp:Label>
       
        
    </td>
    <td >
         <asp:Label ID="lbllabid" runat="server" Text="Label"></asp:Label>
    </td>
    <td></td>
        <td>
            <asp:Label ID="Label5" runat="server" Text="Time"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lbltime" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
</table>
       <table align="center">
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" Height="185px" ImageUrl="~/img/labassishome.png" Width="162px" />
            </td>
        </tr>
    </table>
</asp:Content>

