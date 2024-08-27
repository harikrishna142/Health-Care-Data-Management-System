<%@ Page Title="" Language="C#" MasterPageFile="~/patient.master" AutoEventWireup="true" CodeFile="manageprofile.aspx.cs" Inherits="manageprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
  <table style="height: 274px; width: 528px">
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Patient ID"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtpatid" runat="server"
                AutoPostBack="True" Enabled="False"
               ></asp:TextBox>
        </td>
         <td>
            <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtname" runat="server" Enabled="False"></asp:TextBox>
        </td>
    </tr>
      <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="DOB"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtdob" runat="server" onfocus="showCalendarControl(this);" 
                Enabled="False"  ></asp:TextBox>
        </td>
         <td>
            <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label>
        </td>
        <td>
            <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" Checked="True" 
                GroupName="gen" />
            <asp:RadioButton ID="RadioButton2" runat="server"  Text="Female" 
                GroupName="gen"/>
        </td>
    </tr>
      <tr>
        <td>
            <asp:Label ID="Label5" runat="server" Text="Blood Group"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtbgroup" runat="server" Enabled="False"></asp:TextBox>
        </td>
         <td>
            <asp:Label ID="Label6" runat="server" Text="Father Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtfatname" runat="server" Enabled="False"></asp:TextBox>
        </td>
    </tr>
      <tr>
        <td>
            <asp:Label ID="Label7" runat="server" Text="Street 1"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtst1" runat="server"></asp:TextBox>
        </td>
         <td>
            <asp:Label ID="Label8" runat="server" Text="Street 2 "></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtst2" runat="server"></asp:TextBox>
        </td>
    </tr>
      <tr>
        <td>
            <asp:Label ID="Label9" runat="server" Text="City"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
        </td>
         <td>
            <asp:Label ID="Label10" runat="server" Text="State"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtstate" runat="server"></asp:TextBox>
        </td>
    </tr>
      <tr>
        <td>
            <asp:Label ID="Label11" runat="server" Text="Pin"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtpin" runat="server"></asp:TextBox>
        </td>
         <td>
            <asp:Label ID="Label12" runat="server" Text="Country"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtcountry" runat="server"></asp:TextBox>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="Label18" runat="server" Text="Phone Num"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
        </td>
         <td>
            <asp:Label ID="Label19" runat="server" Text="Email"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
        </td>
    </tr>
</table>
<table style="height: 140px; width: 535px">
    <tr>
        <td>
            <asp:Label ID="Label13" runat="server" Text="Personal Identification 1"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtpersonl1" runat="server" Width="308px" Enabled="False"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label14" runat="server" Text="Personal Identification 2"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtpersonal2" runat="server" Width="308px" Enabled="False"></asp:TextBox>
        </td>
    </tr>
  
    <tr>
        <td align="center">
            <asp:Button ID="Button2" runat="server" Text="UPDATE" Font-Bold="True" 
                Font-Names="Times New Roman" Width="78px" onclick="Button2_Click" />
        </td>
        <td>
            <asp:Button ID="Button3" runat="server" Text="CANCEL" Font-Bold="True" 
                Font-Names="Times New Roman" />
        </td>
    </tr>
</table>
</center>
</asp:Content>

