<%@ Page Title="" Language="C#" MasterPageFile="~/Nurse.master" AutoEventWireup="true" CodeFile="nurseremarks.aspx.cs" Inherits="nurseremarks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="height: 283px; width: 444px">
         <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Welcome Nurse"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblnurseid" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Enter Treatment No."></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txttreatmentnum" runat="server" AutoPostBack="True" OnTextChanged="txttreatmentnum_TextChanged" style="margin-top: 0px" Width="105px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txttreatmentnum" Font-Bold="True" ForeColor="Red" ValidationGroup="phr"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Patient Id"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblpatid" runat="server" Text="........"></asp:Label>
            </td>
        </tr>
         <%-- <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Disease"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbldisease" runat="server" Text="........"></asp:Label>
            </td>
        </tr>
          <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Disease Type"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbltype" runat="server" Text="........"></asp:Label>
            </td>
        </tr>--%>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Remarks"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtremarks" runat="server" Height="75px" TextMode="MultiLine" Width="245px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtremarks" Font-Bold="True" ForeColor="Red" ValidationGroup="phr"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" Width="63px" ValidationGroup="phr" />
            </td>
              <td>
                <asp:Button ID="Button2" runat="server" Text="Cancel" />
            </td>
        </tr>
    </table>
</asp:Content>

