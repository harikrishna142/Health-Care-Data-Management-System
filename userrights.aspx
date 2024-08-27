<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="userrights.aspx.cs" Inherits="userrights" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 689px"><tr><td><h3>Actor Rights Current Status</h3></td></tr>
<tr><td>
    <asp:GridView ID="GridView1" runat="server" Width="930px">
    </asp:GridView>
</td></tr>
</table>

<table style="width: 556px"><tr><td colspan="2"><h3>Provide Actor Rights</h3></td><td>&nbsp;</td><td>&nbsp;</td>
    <td>&nbsp;</td><td>&nbsp;</td></tr>
<tr><td>Actor:</td><td>
    <asp:DropDownList ID="drpactorlist" runat="server" AppendDataBoundItems="true">
    <asp:ListItem>--Select Actor--</asp:ListItem>
    <asp:ListItem>Doctor</asp:ListItem>
    <asp:ListItem>Patient</asp:ListItem>
    <asp:ListItem>Medical</asp:ListItem>
    <asp:ListItem>Agent</asp:ListItem>
    <%--<asp:ListItem>Friend</asp:ListItem>--%>
         <asp:ListItem>Nurse</asp:ListItem>
         <asp:ListItem>Receptionist</asp:ListItem>
        <asp:ListItem>Lab assistant</asp:ListItem>
    </asp:DropDownList>
    </td><td>&nbsp;</td><td>&nbsp;</td><td>
    <asp:Label ID="lblerror" runat="server" ForeColor="Red"></asp:Label>
    </td><td>
        &nbsp;</td></tr>
<tr><td>&nbsp;</td><td>
    &nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>
    &nbsp;</td></tr>
<tr><td>Date:</td><td>
    <asp:CheckBox ID="CheckBox1" runat="server" Text="Yes" />
    </td><td>&nbsp;</td><td>&nbsp;</td><td>Patient Name:</td><td>
    <asp:CheckBox ID="CheckBox8" runat="server" Text="Yes"/>
    </td></tr>
<tr><td>Time:</td><td>
    <asp:CheckBox ID="CheckBox2" runat="server" Text="Yes" />
    </td><td>&nbsp;</td><td>&nbsp;</td><td>Disease:</td><td>
    <asp:CheckBox ID="CheckBox9" runat="server" Text="Yes"/>
    </td></tr>
<tr><td>Doc Name:</td><td>
    <asp:CheckBox ID="CheckBox3" runat="server" Text="Yes" />
    </td><td>&nbsp;</td><td>&nbsp;</td><td>Type:</td><td>
    <asp:CheckBox ID="CheckBox10" runat="server" Text="Yes"/>
    </td></tr>
<tr><td>Doc UserName:</td><td>
    <asp:CheckBox ID="CheckBox4" runat="server" Text="Yes"/>
    </td><td>&nbsp;</td><td>&nbsp;</td><td>Symptoms:</td><td>
    <asp:CheckBox ID="CheckBox11" runat="server" Text="Yes" />
    </td></tr>
<tr><td>Hospital Name:</td><td>
    <asp:CheckBox ID="CheckBox5" runat="server" Text="Yes"/>
    </td><td>&nbsp;</td><td>&nbsp;</td><td>Medicine:</td><td>
    <asp:CheckBox ID="CheckBox12" runat="server" Text="Yes"/>
    </td></tr>
<tr><td>Hospital Location:</td><td>
    <asp:CheckBox ID="CheckBox6" runat="server" Text="Yes"/>
    </td><td>&nbsp;</td><td>&nbsp;</td><td>Description:</td><td>
    <asp:CheckBox ID="CheckBox13" runat="server" Text="Yes"/>
    </td></tr>
<tr><td>Patient ID:</td><td>
    <asp:CheckBox ID="CheckBox7" runat="server" Text="Yes"/>
    </td><td>&nbsp;</td><td>&nbsp;</td><td>Lab Report:</td><td>
    <asp:CheckBox ID="CheckBox14" runat="server" Text="Yes"/>
    </td></tr>
<tr><td>Nurse Remarks:</td><td>
    <asp:CheckBox ID="CheckBox15" runat="server" Text="Yes"/>
    </td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
<tr><td>&nbsp;</td><td>
    &nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="Small" OnClick="Button2_Click" style="margin-left: 0px" Text="Check All" />
    </td><td>
    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Apply Rights</asp:LinkButton>
&nbsp;<asp:LinkButton ID="LinkButton2" runat="server">Cancel</asp:LinkButton>
    </td><td>&nbsp;</td><td>&nbsp;</td><td>
    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="Small" OnClick="Button1_Click" Text="Uncheck All" />
    </td><td>&nbsp;</td></tr>
<tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
</table>
</asp:Content>

