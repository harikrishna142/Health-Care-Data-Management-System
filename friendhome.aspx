<%@ Page Title="" Language="C#" MasterPageFile="~/Friend.master" AutoEventWireup="true" CodeFile="friendhome.aspx.cs" Inherits="friendhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 508px; height: 67px;">
    <tr>
    <td >
        <asp:Label ID="Label2" runat="server" Text="WELCOME"></asp:Label>
    </td>
    <td >
        <asp:Label ID="lbldoc" runat="server" Text="Label"></asp:Label>
    </td>
   <td></td>
        <td >
            <asp:Label ID="Label1" runat="server" Text="Date"></asp:Label>
        </td>
        <td >
            <asp:Label ID="lbldate" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
    <td >
        <asp:Label ID="Label3" runat="server" Text="Friend ID"></asp:Label>
       
        
    </td>
    <td >
         <asp:Label ID="lbldocid" runat="server" Text="Label"></asp:Label>
    </td>
    <td ></td>
        <td valign="top">
            <asp:Label ID="Label5" runat="server" Text="Time"></asp:Label>
        </td>
        <td valign="top">
            <asp:Label ID="lbltime" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
</table>

<table>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3"  Width="506px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="patid" HeaderText="Key From Patient" 
                        SortExpression="patid" />
                    <asp:BoundField DataField="patkey" HeaderText="Dual Key For Viewing Request" 
                        SortExpression="patkey" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:connect %>" 
                SelectCommand="SELECT [patid], [patkey] FROM [docrequest] WHERE ([docid] = @docid)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lbldocid" Name="docid" PropertyName="Text" 
                        Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>--%>
        </td>
    </tr>
</table>
</asp:Content>

