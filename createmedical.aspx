<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="createmedical.aspx.cs" Inherits="createmedical" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="height: 443px; width: 608px" >  <tr>
        <td style="color: #CC00CC; text-decoration: underline;" valign="bottom">
            MEDICAL SHOP&nbsp; CREATION:  
            <asp:Image ID="Image1" runat="server" Height="40px" 
                ImageUrl="~/img/medi1.png" Width="48px" />
        </td>
    </tr>
<tr><td>Medical Shop ID:</td><td>
    <asp:Label ID="lblmedid" runat="server"></asp:Label></td></tr>
    
<tr><td>Shop Name:</td><td>
    <asp:TextBox ID="txtshopname" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtshopname" Font-Bold="True" ForeColor="Red" ValidationGroup="phr"></asp:RequiredFieldValidator>
    </td></tr>
    
<tr><td>Shop incharge Name:</td><td>
    <asp:TextBox ID="txtstreet1" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="*" ControlToValidate="txtstreet1" Font-Bold="True" ForeColor="Red" ValidationGroup="phr"></asp:RequiredFieldValidator>
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
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="*" ControlToValidate="txtemail" Font-Bold="True" ForeColor="Red" ValidationGroup="phr"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Phone No:</td>
            <td>
                <asp:TextBox ID="txtmobile" runat="server" MaxLength="10"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="*" ControlToValidate="txtmobile" Font-Bold="True" ForeColor="Red" ValidationGroup="phr"></asp:RequiredFieldValidator>
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
                    Font-Names="Times New Roman" onclick="Button1_Click" ValidationGroup="phr" />
            &nbsp;<asp:Button ID="Button2" runat="server" Text="CANCEL" Font-Bold="True" 
                    Font-Names="Times New Roman" onclick="Button2_Click" />
            </td></tr>
    
    </table>
 <table>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" DataKeyNames="medid" DataSourceID="SqlDataSource1" 
                GridLines="Vertical" onrowdeleting="GridView1_RowDeleting" 
                onrowupdating="GridView1_RowUpdating" Width="833px">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:TemplateField HeaderText="Shop id" SortExpression="MedID">
                       
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("medid") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Shop Name" SortExpression="name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Shopname") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("shopname") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Incharge Name" SortExpression="Street1">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("street1") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Street1") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email" SortExpression="email">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Phone" SortExpression="phone">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("phone") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label9" runat="server" Text='<%# Bind("phone") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="UserName" SortExpression="uname">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("uname") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label10" runat="server" Text='<%# Bind("uname") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Password" SortExpression="pwd">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("pwd") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label11" runat="server" Text='<%# Bind("pwd") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Actor" SortExpression="Actor">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("Actor") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label12" runat="server" Text='<%# Bind("Actor") %>'></asp:Label>
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [medid], [shopname], [street1], [street2], [conarea], [concity], [constate], [email], [phone], [uname], [pwd], [actor] FROM [meddet]"></asp:SqlDataSource>
            <%--<asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                DataFile="~/App_Data/phrdb.mdb" 
                SelectCommand="SELECT [medid], [shopname], [street1], [street2], [conarea], [concity],[constate], [email], [phone], [uname], [pwd], [actor] FROM [meddet]">
            </asp:AccessDataSource>--%>
            
        </td>
    </tr>
</table>
</asp:Content>

