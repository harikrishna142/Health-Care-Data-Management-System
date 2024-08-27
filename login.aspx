<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="ASP.Web.UI.PopupControl" Namespace="ASP.Web.UI.PopupControl"
    TagPrefix="ASPP" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="Stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="div">
        <table style="height: 50px" width="100%">
            <tr>
                <td align="center" style="font-size: x-large">
                    Attribute Based Encryption For Health Care Data
                </td>
            </tr>
        </table>
        <table style="height: 20px" width="100%" id="tab">
            <tr>
                <td>
                </td>
            </tr>
        </table>
         <table width="100%" style="background-color: #000066">
            <tr>
                <td>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <center style="height: 370px">
    <table style="width: 825px">
        <tr>
            <td>
            
           
    <fieldset style="height: 180px; width: 352px">
        <legend>
        Login
        </legend>
        <table style="height: 150px; width: 297px">
            <tr>
                <td>
                 <asp:Label ID="Label3" runat="server" Text="Roll"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="Droproll" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Width="128px">
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>Doctor</asp:ListItem>
                        <asp:ListItem>Patient</asp:ListItem>
                        <asp:ListItem>Insurance Agent</asp:ListItem>
                     <%--   <asp:ListItem>Friend</asp:ListItem>--%>
                        <asp:ListItem>Medical</asp:ListItem>
                        <asp:ListItem>Nurse</asp:ListItem>
                         <asp:ListItem>Lab Assistant</asp:ListItem>
                        <asp:ListItem>Receptionist</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Login" Font-Bold="True" 
                        Font-Names="Times New Roman" Width="76px" onclick="Button1_Click" />
                &nbsp;<asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" 
                        Font-Names="Times New Roman" Width="74px" />
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click">Signup</asp:LinkButton>
                </td>
            </tr>
        </table>
    </fieldset>

         </td>
         <td>
             <asp:Image ID="Image1" runat="server" ImageUrl="~/img/form-login.png" />
         </td>
        </tr>
    </table>
    </center>
        <ASPP:PopupPanel BackColor="Maroon" HeaderText="SIGN UP" ID="pup" runat="server"
            OnCloseWindowClick="MycloseWindow">
            <PopupWindow runat="server">
                <ASPP:PopupWindow ID="PopupWindow2" runat="server" BackColor="Maroon">
                    <div align="center" style="width: 500px; height: 300px">
                        <table>
                            <tr>
                                <td>
                                    <asp:Image ID="Image2" runat="server" ImageUrl="~/img/signup.jpg" />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                        <table>
                            <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/agentsignup.aspx">Click for Agent Signup</asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/friendsignup.aspx">Click for Friend Signup</asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                    </div>
                </ASPP:PopupWindow>
            </PopupWindow>
        </ASPP:PopupPanel>
    </div>
    </form>
</body>
</html>
