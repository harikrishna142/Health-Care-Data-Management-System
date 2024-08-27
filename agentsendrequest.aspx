<%@ Page Title="" Language="C#" MasterPageFile="~/Agent.master" AutoEventWireup="true" CodeFile="agentsendrequest.aspx.cs" Inherits="agentsendrequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 370px">
     <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Patient ID"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True" 
                Font-Names="Times New Roman"
                DataSourceID="SqlDataSource1" DataTextField="patid" DataValueField="patid">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [patid] FROM [patdet]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Send Request"></asp:Label>
        </td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="CLICK TO REQUEST" 
                BackColor="#00CC66" BorderColor="#000066" Font-Bold="True" 
                Font-Names="Times New Roman" onclick="Button1_Click" Width="185px" />
        </td>
    </tr>
</table>
</asp:Content>

