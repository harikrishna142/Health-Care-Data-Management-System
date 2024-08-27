<%@ Page Language="C#" AutoEventWireup="true" CodeFile="friendsignup.aspx.cs" Inherits="friendsignup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link href="StyleSheet.css" rel="Stylesheet" type="text/css" />
 <script language="javascript" type="text/javascript">
     function isNumeric(keyCode) {
         return ((keyCode >= 48 && keyCode <= 57) || keyCode == 8 || keyCode == 11 || keyCode == 9)
     }
     function isString(keyCode) {
         return ((keyCode >= 65 && keyCode <= 90) || keyCode == 8 || keyCode == 11 || keyCode == 9 || keyCode == 32)
     }

   
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="div">
         <table style="height: 50px" width="1350px">
        <tr>
            <td align="center" style="font-size: x-large">
           Attribute Based Encryption For Health Care Data
            </td>
        </tr>
    </table>
    <table style="height: 20px" width="1350px" id="tab">
        <tr>
            <td>
           
            </td>
        </tr>
    </table>
    <br />
    <center>
        <asp:Label ID="Label3" runat="server" Text="FRIEND SIGN UP"></asp:Label>
        </center>
    <br />
    <table bgcolor="White" align="center" style="height: 354px; width: 653px">
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/img/friend.jpg" />
            </td>
            <td>
                <table style="height: 367px; width: 407px">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblid" runat="server"></asp:Label>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtname" onkeydown="return isString(event.keyCode);" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                  
                     <tr>
                        <td>
                        
                            <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
                            </td>
                        <td>
                            <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="Phone num"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtphone" onkeydown="return isNumeric(event.keyCode);" MaxLength="10"  runat="server"></asp:TextBox>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="Email Id"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ErrorMessage="Invalid" ControlToValidate="txtemail" ValidationGroup="phr"  
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                ForeColor="Red"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                     
                     <tr>
                        <td>
                            <asp:Label ID="Label8" runat="server" Text="Username"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtusername" runat="server" AutoPostBack="True" ontextchanged="txtusername_TextChanged" 
                               ></asp:TextBox>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="Label9" runat="server" Text="Password"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                     <tr>
                        <td align="center">
                            <asp:Button ID="Button1" runat="server" Text="Create" Font-Bold="True" 
                                Font-Names="Times New Roman"  Width="79px" onclick="Button1_Click" 
                                ValidationGroup="phr" />
                        </td>
                        <td>
                            <asp:Button ID="Button2" runat="server" Text="Back" Font-Bold="True" 
                                Font-Names="Times New Roman"  Width="84px" onclick="Button2_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
