<%@ Page Title="" Language="C#" MasterPageFile="~/doctor.master" AutoEventWireup="true"
    CodeFile="doccreatpat.aspx.cs" Inherits="doccreatpat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script language="javascript" type="text/javascript">
        function isNumeric(keyCode) {
            return ((keyCode >= 48 && keyCode <= 57) || keyCode == 8 || keyCode == 11 || keyCode == 9)
        }
        function isString(keyCode) {
            return ((keyCode >= 65 && keyCode <= 90) || keyCode == 8 || keyCode == 11 || keyCode == 9 || keyCode == 32)
        }

   
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   <table style="height: 224px; width: 707px">
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Patient ID"></asp:Label>
        </td>
        <td>
                <asp:Label ID="lblpatid" runat="server" ></asp:Label>
        </td>
         <td>
            <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtname" runat="server" onkeydown="return isString(event.keyCode);" onpaste="return false;"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="*" ValidationGroup="phr" ControlToValidate="txtname" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
      <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="DOB"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtdob" runat="server" onfocus="showCalendarControl(this);"  ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ErrorMessage="*" ValidationGroup="phr" ControlToValidate="txtdob" 
                ForeColor="Red"></asp:RequiredFieldValidator>
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
            <asp:DropDownList ID="ddlblgroup" runat="server">
                <asp:ListItem>--Select--</asp:ListItem>
                <asp:ListItem>O+</asp:ListItem>
                <asp:ListItem>O-</asp:ListItem>
                <asp:ListItem>A+</asp:ListItem>
                <asp:ListItem>A-</asp:ListItem>
                <asp:ListItem>B+</asp:ListItem>
                <asp:ListItem>B-</asp:ListItem>
                <asp:ListItem>AB+</asp:ListItem>
                <asp:ListItem>AB-</asp:ListItem>
                <asp:ListItem>NOT KNOWN</asp:ListItem>
            </asp:DropDownList>
        </td>
         <td>
            <asp:Label ID="Label6" runat="server" Text="Father Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtfatname" runat="server" onkeydown="return isString(event.keyCode);" onpaste="return false;"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ErrorMessage="*" ValidationGroup="phr" ControlToValidate="txtfatname" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
      <tr>
        <td>
            <asp:Label ID="Label7" runat="server" Text="Street 1"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtst1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ErrorMessage="*" ValidationGroup="phr" ControlToValidate="txtst1" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
         <td>
            <asp:Label ID="Label8" runat="server" Text="Street 2 "></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtst2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ErrorMessage="*" ValidationGroup="phr" ControlToValidate="txtst2" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
      <tr>
        <td>
            <asp:Label ID="Label9" runat="server" Text="City"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddlcity" runat="server">
                <asp:ListItem>--Select--</asp:ListItem>
                <asp:ListItem>Coimbatore</asp:ListItem>
                <asp:ListItem>Erode</asp:ListItem>
                <asp:ListItem>Madurai</asp:ListItem>
                <asp:ListItem>Chennai</asp:ListItem>
            </asp:DropDownList>
        </td>
         <td>
            <asp:Label ID="Label10" runat="server" Text="State"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddlstate" runat="server">
            <asp:ListItem>--Select--</asp:ListItem>
            <asp:ListItem>Tamil Nadu</asp:ListItem>
            <asp:ListItem>Kerala</asp:ListItem>
            <asp:ListItem>Andhra</asp:ListItem>
            <asp:ListItem>Karnataka</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
      <tr>
        <td>
            <asp:Label ID="Label11" runat="server" Text="Pin"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtpin" runat="server" onkeydown="return isNumeric(event.keyCode);" onpaste="return false;"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                ErrorMessage="*" ValidationGroup="phr" ControlToValidate="txtpin" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
         <td>
            <asp:Label ID="Label12" runat="server" Text="Country"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddlcountry" runat="server">
            <asp:ListItem>--Select--</asp:ListItem>
            <asp:ListItem>India</asp:ListItem>
            <asp:ListItem>China</asp:ListItem>
            <asp:ListItem>Malaysia</asp:ListItem>
            <asp:ListItem>Japan</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="Label18" runat="server" Text="Phone Num"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtphone" runat="server" onkeydown="return isNumeric(event.keyCode);" onpaste="return false;"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                ErrorMessage="*" ValidationGroup="phr" ControlToValidate="txtphone" 
                ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="valMinLength" runat="server" 
                ControlToValidate="txtphone" ErrorMessage="Min 10 char" ForeColor="Red" 
                ValidationExpression="^[0-9A-Za-z]{10,15}$" ValidationGroup="phr" />
        </td>
         <td>
            <asp:Label ID="Label19" runat="server" Text="Email"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                ErrorMessage="*" ValidationGroup="phr" ControlToValidate="txtemail" 
                ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ErrorMessage="Invalid" ControlToValidate="txtemail" ValidationGroup="phr"  
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                ForeColor="Red"></asp:RegularExpressionValidator>
        </td>
    </tr>
</table>
<table style="height: 231px; width: 636px">
    <tr>
        <td>
            <asp:Label ID="Label13" runat="server" Text="Personal Identification 1"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtpersonl1" runat="server" Width="308px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                ErrorMessage="*" ValidationGroup="phr" ControlToValidate="txtpersonl1" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label14" runat="server" Text="Personal Identification 2"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtpersonal2" runat="server" Width="308px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                ErrorMessage="*" ValidationGroup="phr" ControlToValidate="txtpersonal2" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td></td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Generate Username and Password" 
                BackColor="#416AE4" Font-Bold="True" Font-Names="Times New Roman" 
                onclick="Button1_Click" />
        </td>
        
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label15" runat="server" Text="Username"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtusername" runat="server" ReadOnly="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                ErrorMessage="*" ValidationGroup="phr" ControlToValidate="txtusername" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label16" runat="server" Text="Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="Ttxtpasword" runat="server" ReadOnly="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                ErrorMessage="*" ValidationGroup="phr" ControlToValidate="Ttxtpasword" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
      <tr>
            <td>
                <asp:Label ID="Label17" runat="server" Text="Upload Photo"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
    <tr>
        <td align="center">
            <asp:Button ID="Button2" runat="server" Text="SAVE" Font-Bold="True" 
                Font-Names="Times New Roman" Width="66px" onclick="Button2_Click" ValidationGroup="phr" />
        </td>
        <td>
            <asp:Button ID="Button3" runat="server" Text="CANCEL" Font-Bold="True" 
                Font-Names="Times New Roman" onclick="Button3_Click" />
            <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>
