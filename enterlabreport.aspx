<%@ Page Title="" Language="C#" MasterPageFile="~/labassistant.master" AutoEventWireup="true" CodeFile="enterlabreport.aspx.cs" Inherits="enterlabreport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 145px;
        }
        .auto-style3 {
            width: 45px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="height: 82px; width: 305px">
        <tr>
            <td>
                Welcome 
            </td>
            <td>
                <asp:Label ID="lbllabid" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label4" runat="server" Text="Enter Treatment Id"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txttid" runat="server" Width="93px" AutoPostBack="True" OnTextChanged="txttid_TextChanged"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td class="auto-style2">
                <asp:Label ID="Label5" runat="server" Text="Patient Id"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblpatid" runat="server" Text=".........."></asp:Label>
            </td>
        </tr>
        </table>
    <table style="height: 275px; width: 402px">
        <tr> 
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>
            </td>
               <td >
                <asp:Label ID="Label2" runat="server" Text="TESTNAME"></asp:Label>
            </td>
               <td>
                <asp:Label ID="Label3" runat="server" Text="RANGE"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                1.
            </td>
            <td>
                <asp:TextBox ID="testname1" runat="server" Width="130px"></asp:TextBox>
            </td>
             <td>
                <asp:TextBox ID="range1" runat="server" Width="100px"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td class="auto-style3">
                2.
            </td>
            <td>
                <asp:TextBox ID="testname2" runat="server" Width="130px"></asp:TextBox>
            </td>
             <td>
                <asp:TextBox ID="range2" runat="server" Width="100px"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td class="auto-style3">
                3.
            </td>
            <td>
                <asp:TextBox ID="testname3" runat="server" Width="130px"></asp:TextBox>
            </td>
             <td>
                <asp:TextBox ID="range3" runat="server" Width="100px"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td class="auto-style3">
                4.
            </td>
            <td>
                <asp:TextBox ID="testname4" runat="server" Width="130px"></asp:TextBox>
            </td>
             <td>
                <asp:TextBox ID="range4" runat="server" Width="100px"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td class="auto-style3">
                5.
            </td>
            <td>
                <asp:TextBox ID="testname5" runat="server" Width="130px"></asp:TextBox>
            </td>
             <td>
                <asp:TextBox ID="range5" runat="server" Width="100px"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td class="auto-style3">
                6.
            </td>
            <td>
                <asp:TextBox ID="testname6" runat="server" Width="130px"></asp:TextBox>
            </td>
             <td>
                <asp:TextBox ID="range6" runat="server" Width="100px"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td class="auto-style3">
                
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Save" Font-Bold="True" Font-Names="Cambria" Width="77px" OnClick="Button1_Click" />
            </td>
             <td>
                 <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" Font-Names="Cambria" />
            </td>
        </tr>
    </table>
</asp:Content>

