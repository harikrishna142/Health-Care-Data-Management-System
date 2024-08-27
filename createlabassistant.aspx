<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="createlabassistant.aspx.cs" Inherits="createlabassistant" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="height: 443px; width: 596px" >  <tr>
        <td style="color: #CC00CC; text-decoration: underline;" valign="bottom">
            LAB ASSISTANT CREATION:  
            <asp:Image ID="Image1" runat="server" Height="40px" 
                ImageUrl="~/img/lab1.png" Width="48px" />
        </td>
    </tr>
<tr><td>Lab Assis. ID:</td><td>
    <asp:Label ID="lblnurseid" runat="server"></asp:Label></td></tr>
    
<tr><td>Name:</td><td>
    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtname" Font-Bold="True" ForeColor="Red" ValidationGroup="phr"></asp:RequiredFieldValidator>
    </td></tr>
    
<tr><td>Age:</td><td>
    <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="*" ControlToValidate="txtage" Font-Bold="True" ForeColor="Red" ValidationGroup="phr"></asp:RequiredFieldValidator>
    </td></tr>
    <tr><td>Gender:</td><td>
        <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" GroupName="gender" Checked="true" />
        <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" GroupName="gender" />
    </td></tr>
        <tr><td>Yr of Exp:</td><td>
    <asp:TextBox ID="txtyrexp" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="*" ControlToValidate="txtyrexp" Font-Bold="True" ForeColor="Red" ValidationGroup="phr"></asp:RequiredFieldValidator>
    </td></tr>
        <tr>
            <td>
                Email:</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="ex: abc@gmail.com" ControlToValidate="txtemail"  
                    ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ValidationGroup="phr"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="*" ControlToValidate="txtemail" Font-Bold="True" ForeColor="Red" ValidationGroup="phr"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Phone No:</td>
            <td>
                <asp:TextBox ID="txtphone" runat="server" MaxLength="10"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="*" ControlToValidate="txtphone" Font-Bold="True" ForeColor="Red" ValidationGroup="phr"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
            <asp:Button ID="Button3" runat="server" Text="Generate Username and Password" 
                BackColor="#416AE4" Font-Bold="True" Font-Names="Times New Roman" 
                onclick="Button3_Click" style="height: 25px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Username"></asp:Label>
                :</td>
            <td>
                <asp:TextBox ID="txtusername" runat="server" ReadOnly="True"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                ErrorMessage="*" ValidationGroup="phr" ControlToValidate="txtusername" 
                ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Password"></asp:Label>
                :</td>
            <td>
                <asp:TextBox ID="txtpassword" runat="server" ReadOnly="True"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                ErrorMessage="*" ValidationGroup="phr" ControlToValidate="txtpassword" 
                ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
<tr><td>&nbsp;</td><td>
                <asp:Button ID="Button1" runat="server" Text="CREATE" Font-Bold="True" 
                    Font-Names="Times New Roman" ValidationGroup="phr" OnClick="Button1_Click" />
            &nbsp;<asp:Button ID="Button2" runat="server" Text="CANCEL" Font-Bold="True" 
                    Font-Names="Times New Roman" />
            </td></tr>
    
    </table>
    <table>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" Width="816px" DataKeyNames="lasid" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:TemplateField HeaderText="Lab Ass. Id" SortExpression="lasid">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("lasid") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label9" runat="server" Text='<%# Bind("lasid") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Name" SortExpression="lasname">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("lasname") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("lasname") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Age" SortExpression="age">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("age") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("age") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Gender" SortExpression="gender">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("gender") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("gender") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Yr of Exp" SortExpression="yrexp">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("yrexp") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("yrexp") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Phone" SortExpression="phno">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("phno") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("phno") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email" SortExpression="email">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Username" SortExpression="uname">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("uname") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("uname") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Password" SortExpression="pwd">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("pwd") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("pwd") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [lasid], [lasname], [age], [gender], [yrexp], [phno], [email], [uname], [pwd] FROM [labassdet]"></asp:SqlDataSource>
                
            </td>
        </tr>
    </table>
</asp:Content>

