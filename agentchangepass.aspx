<%@ Page Title="" Language="C#" MasterPageFile="~/Agent.master" AutoEventWireup="true" CodeFile="agentchangepass.aspx.cs" Inherits="agentchangepass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table style="height: 152px; width: 341px">
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Old Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtold" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtold" ErrorMessage="cant be blank" ValidationGroup="phr"></asp:RequiredFieldValidator>
        </td>
    </tr>
      <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="New Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtnew" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtnew" ErrorMessage="cant be blank" ValidationGroup="phr"></asp:RequiredFieldValidator>
        </td>
    </tr>
      <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtconfirm" runat="server" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtnew" ControlToValidate="txtconfirm" 
                ErrorMessage="not same" ValidationGroup="phr"></asp:CompareValidator>
        </td>
    </tr>
      <tr>
        <td align="center">
            <asp:Button ID="Button1" runat="server" Text="UPDATE" Font-Bold="True" 
                Font-Names="Times New Roman" onclick="Button1_Click" 
                ValidationGroup="phr" />
        </td>
        <td>
            <asp:Button ID="Button2" runat="server" Text="CANCEL" Font-Bold="True" 
                Font-Names="Times New Roman" onclick="Button2_Click" />
        </td>
    </tr>
</table>
</asp:Content>

