<%@ Page Title="" Language="C#" MasterPageFile="~/patient.master" AutoEventWireup="true" CodeFile="friendslist.aspx.cs" Inherits="friendslist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table><tr><td><h3>Search Friends</h3></td></tr>
<tr><td>Friend User Name:</td><td>
    <asp:TextBox ID="txtfrndid" runat="server"></asp:TextBox>
    </td><td>
    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Search</asp:LinkButton></td></tr>
<tr><td>&nbsp;</td><td>
    &nbsp;</td><td>
        &nbsp;</td></tr>
</table>
<table><tr><td>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <Columns>

            <asp:BoundField DataField="UName" HeaderText="UserName" />
            <asp:BoundField DataField="phone" HeaderText="Phone" />
            <asp:BoundField DataField="email" HeaderText="Email" />
            <asp:TemplateField HeaderText="Detail">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" 
                        CommandName="Select" Text="Add Friend"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</td></tr></table>
</asp:Content>

