<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="createdoctor.aspx.cs" Inherits="createdoctor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script language="javascript" type="text/javascript">
    function isNumeric(keyCode) {
        return ((keyCode >= 48 && keyCode <= 57) || keyCode == 8 || keyCode == 11 || keyCode == 9)
    }
    function isString(keyCode) {
        return ((keyCode >= 65 && keyCode <= 90) || keyCode == 8 || keyCode == 11 || keyCode == 9 || keyCode == 32)
    }

   
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="height: 462px; width: 764px">
    <tr>
        <td style="color: #CC00CC; text-decoration: underline;" valign="bottom">
        DOCTOR CREATION:  
            <asp:Image ID="Image1" runat="server" Height="40px" 
                ImageUrl="~/img/doctor-1.png" Width="48px" />
        </td>
    </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Doctor Id"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtdocid" runat="server" Enabled="false" AutoPostBack="True" ReadOnly="True"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="*" ValidationGroup="phr" ControlToValidate="txtdocid" 
                ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Doctor Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtdocname" runat="server" onkeydown="return isString(event.keyCode);" onpaste="return false;"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="*" ValidationGroup="phr" ControlToValidate="txtdocname" 
                ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Specialised in"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="txtspecialise" runat="server" Font-Bold="True" 
                    Font-Names="Times New Roman">
                    <asp:ListItem>BRAIN</asp:ListItem>
                    <asp:ListItem>NERVE</asp:ListItem>
                    <asp:ListItem>HEART</asp:ListItem>
                    <asp:ListItem>KIDNEY</asp:ListItem>
                    <asp:ListItem>EYE</asp:ListItem>
                    <asp:ListItem>CANCER</asp:ListItem>
                    <asp:ListItem>GENERAL</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Yr of Experience"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtexp" runat="server" Width="25px" onkeydown="return isNumeric(event.keyCode);" onpaste="return false;"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ErrorMessage="*" ValidationGroup="phr" ControlToValidate="txtexp" 
                ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ErrorMessage="*" ValidationGroup="phr" ControlToValidate="txtemail" 
                ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ErrorMessage="Invalid" ControlToValidate="txtemail" ValidationGroup="phr"  
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Mobile"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtmobile" runat="server" onkeydown="return isNumeric(event.keyCode);" onpaste="return false;" MaxLength="10"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ErrorMessage="*" ValidationGroup="phr" ControlToValidate="txtmobile" 
                ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
           <tr>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Hospital Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txthosname1" runat="server" Width="185px" onkeydown="return isString(event.keyCode);" onpaste="return false;"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ErrorMessage="*" ValidationGroup="phr" ControlToValidate="txthosname1" 
                ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
             <td>
                <asp:Label ID="Label12" runat="server" Text="Location"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txthosloc1" runat="server" Width="160px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ErrorMessage="*" ValidationGroup="phr" ControlToValidate="txthosloc1" 
                ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
           <tr>
            <td>
                <asp:Label ID="Label10" runat="server" Text="Hospital Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txthosname2" runat="server" Width="185px" onkeydown="return isString(event.keyCode);" onpaste="return false;"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ErrorMessage="*" ValidationGroup="phr" ControlToValidate="txthosname2" 
                ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
              <td>
                <asp:Label ID="Label13" runat="server" Text="Location"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txthosloc2" runat="server" Width="160px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ErrorMessage="*" ValidationGroup="phr" ControlToValidate="txthosloc2" 
                ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
           <tr>
            <td>
                <asp:Label ID="Label11" runat="server" Text="Hospital Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txthosname3" runat="server" Width="185px" onkeydown="return isString(event.keyCode);" onpaste="return false;"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                ErrorMessage="*" ValidationGroup="phr" ControlToValidate="txthosname3" 
                ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
              <td>
                <asp:Label ID="Label14" runat="server" Text="Location"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txthosloc3" runat="server" Width="160px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                ErrorMessage="*" ValidationGroup="phr" ControlToValidate="txthosloc3" 
                ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
            <asp:Button ID="Button3" runat="server" Text="Generate Username and Password" 
                BackColor="#416AE4" Font-Bold="True" Font-Names="Times New Roman" 
                onclick="Button3_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Username"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtusername" runat="server" AutoPostBack="True" 
                    ontextchanged="txtusername_TextChanged" ReadOnly="True"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                ErrorMessage="*" ValidationGroup="phr" ControlToValidate="txtusername" 
                ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpassword" runat="server" ReadOnly="True"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                ErrorMessage="*" ValidationGroup="phr" ControlToValidate="txtpassword" 
                ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label15" runat="server" Text="Upload Photo"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="CREATE" Font-Bold="True" 
                    Font-Names="Times New Roman" onclick="Button1_Click" ValidationGroup="phr" />
            &nbsp;<asp:Button ID="Button2" runat="server" Text="CANCEL" Font-Bold="True" 
                    Font-Names="Times New Roman" onclick="Button2_Click" />
            </td>
        </tr>

    </table>
</asp:Content>

