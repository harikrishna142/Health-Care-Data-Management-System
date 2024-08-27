<%@ Page Title="" Language="C#" MasterPageFile="~/Friend.master" AutoEventWireup="true"
    CodeFile="frienviewreport.aspx.cs" Inherits="frienviewreport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table>
        <tr>
            <td>
                WELCOME&nbsp;&nbsp;: Your ID is&nbsp;
                <asp:Label ID="lblpatient" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
   
<table>
    <tr>
        <td>
<table>
<tr><td><h3>Search Details</h3></td></tr>
<tr><td>Search Detail By ID:</td><td><asp:TextBox ID="txtpatid" runat="server"></asp:TextBox></td><td>
    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Search
</asp:LinkButton></td></tr></table>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
                CellPadding="3" CellSpacing="1"  GridLines="None" 
                Width="1163px" onselectedindexchanged="GridView1_SelectedIndexChanged" 
                AllowSorting="True">
                <Columns>
                    <asp:BoundField DataField="tdate" HeaderText="Reported Date" 
                        SortExpression="tdate" />
                    <asp:BoundField DataField="ttime" HeaderText="Reported Time" 
                        SortExpression="ttime" />
                          
                    <asp:BoundField DataField="docname" HeaderText="Doctor name" 
                        SortExpression="docname" />
                    <asp:BoundField DataField="hosname" HeaderText="Hospital Name" 
                        SortExpression="hosname" />
                    <asp:BoundField DataField="hosloc" HeaderText="Location" 
                        SortExpression="hosloc" />
                    <asp:BoundField DataField="dises" HeaderText="Disease" SortExpression="dises" />
                    <asp:BoundField DataField="type" HeaderText="Type" SortExpression="type" />
                    <asp:BoundField DataField="symp" HeaderText="Symptoms" SortExpression="symp" />
                    <asp:BoundField DataField="medi" HeaderText="Medicines Prescribed" 
                        SortExpression="medi" />
                    <asp:BoundField DataField="descrip" HeaderText="Description" 
                        SortExpression="descrip" />
                        <asp:BoundField DataField="pid" HeaderText="Patient ID" 
                        SortExpression="pid" />
                    <asp:BoundField DataField="pname" HeaderText="Patient Name" 
                        SortExpression="pname" />
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#33276A" />
            </asp:GridView>
          <%--  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [tdate], [ttime], [pid], [pname], [docname], [hosname], [hosloc], [dises], [type], [symp], [medi], [descrip] FROM [treatment]"></asp:SqlDataSource>
            --%>
            <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:connect %>" 
                
                SelectCommand="SELECT date, time, docname, hosname, hosloc, dises, type, symp, medi, descrip FROM treatment">
               
            </asp:SqlDataSource>--%>
        </td>
    </tr>
</table>
<table style="height: 264px; width: 391px">
<tr>
        <td align="left" >
            <asp:Label ID="Label9" runat="server" Text="Reported Date"></asp:Label>
        </td>
        <td align="left">
            <asp:Label ID="lbldate" runat="server" Text="----------"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="left" >
            <asp:Label ID="Label10" runat="server" Text="Reported Time"></asp:Label>
        </td>
        <td align="left">
            <asp:Label ID="lbltime" runat="server" Text="----------"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="left" >
            <asp:Label ID="Label1" runat="server" Text="Doctor Name"></asp:Label>
        </td>
        <td align="left">
            <asp:Label ID="lbldocname" runat="server" Text="----------"></asp:Label>
        </td>
    </tr>
     <tr>
        <td align="left" >
            <asp:Label ID="Label2" runat="server" Text="Hospital Name"></asp:Label>
        </td>
        <td align="left">
            <asp:Label ID="lblhosname" runat="server" Text="----------"></asp:Label>
        </td>
    </tr>
     <tr>
        <td align="left" >
            <asp:Label ID="Label3" runat="server" Text="Location"></asp:Label>
        </td>
        <td align="left">
            <asp:Label ID="lblloc" runat="server" Text="----------"></asp:Label>
        </td>
    </tr>
     <tr>
        <td align="left" >
            <asp:Label ID="Label4" runat="server" Text="Disease"></asp:Label>
        </td>
        <td align="left">
            <asp:Label ID="lbldisease" runat="server" Text="----------"></asp:Label>
        </td>
    </tr>
     <tr>
        <td align="left" >
            <asp:Label ID="Label5" runat="server" Text="Type"></asp:Label>
        </td>
        <td align="left">
            <asp:Label ID="lbltype" runat="server" Text="----------"></asp:Label>
        </td>
    </tr>
     <tr>
        <td align="left" >
            <asp:Label ID="Label6" runat="server" Text="Symptom"></asp:Label>
        </td>
        <td align="left">
            <asp:Label ID="lblsymptom" runat="server" Text="----------"></asp:Label>
        </td>
    </tr>
     <tr>
        <td align="left" >
            <asp:Label ID="Label7" runat="server" Text="Medicine Prescribed"></asp:Label>
        </td>
        <td align="left">
            <asp:Label ID="lblmedicine" runat="server" Text="----------"></asp:Label>
        </td>
    </tr>
     <tr>
        <td align="left" >
            <asp:Label ID="Label8" runat="server" Text="Description"></asp:Label>
        </td>
        <td align="left">
            <asp:Label ID="lbldescription" runat="server" Text="----------"></asp:Label>
        </td>
    </tr>
</table>

<table>
    <tr>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Download Report" 
                BackColor="#33CCCC" BorderColor="Maroon" Font-Bold="True" Font-Names="Cambria" 
                onclick="Button1_Click" />
        </td>
    </tr>
</table>

</asp:Content>
