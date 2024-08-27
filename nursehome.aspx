<%@ Page Title="" Language="C#" MasterPageFile="~/Nurse.master" AutoEventWireup="true" CodeFile="nursehome.aspx.cs" Inherits="nursehome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 62px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 467px; height: 40px;">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label2" runat="server" Text="Welcome"></asp:Label>
            </td>
             <td>
                <asp:Label ID="Label3" runat="server" Text="Nurse"></asp:Label>
            &nbsp;-&nbsp;
                 <asp:Label ID="lblid" runat="server" Text="Label"></asp:Label>
&nbsp;!!!</td>
             <td>
                <asp:Label ID="Label4" runat="server" Text="Date:"></asp:Label>
           
                <asp:Label ID="lbldate" runat="server" Text="Nurse"></asp:Label>
            </td>
             <td>
                <asp:Label ID="Label5" runat="server" Text="Time:"></asp:Label>
          
                <asp:Label ID="lbltime" runat="server" Text="Nurse"></asp:Label>
            </td>
        </tr>
        
    </table>
     <table align="center">
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" Height="185px" ImageUrl="~/img/nursehome.png" Width="162px" />
            </td>
        </tr>
    </table>
</asp:Content>

