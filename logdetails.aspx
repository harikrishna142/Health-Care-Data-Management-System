<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="logdetails.aspx.cs" Inherits="logdetails" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 731px">
        <tr>
            <td>

            
     <h3 style="background-color: #CCCCCC">Doctor Log Details</h3>
<table><tr><td>
    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
        EmptyDataText="No Records Found">
        <Columns>
            <asp:BoundField DataField="uname" HeaderText="Name" SortExpression="uname" />
            <asp:BoundField DataField="logdate" HeaderText="LogDate" 
                SortExpression="logdate" />
            <asp:BoundField DataField="logtime" HeaderText="LogTime" 
                SortExpression="logtime" />
            <asp:BoundField DataField="actor" HeaderText="Actor" SortExpression="actor" />
        </Columns>
    </asp:GridView>
<%--    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [uname], [logdate], [logtime], [actor] FROM [logdetails] WHERE ([actor] = @actor)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Doctor" Name="actor" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>--%>
    
    
</td></tr></table>
     <h3 style="background-color: #CCCCCC">Patient Log Details</h3>
<table><tr><td>
    <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
        EmptyDataText="No Records Found" >
        <Columns>
            <asp:BoundField DataField="uname" HeaderText="Name" SortExpression="uname" />
            <asp:BoundField DataField="logdate" HeaderText="LogDate" 
                SortExpression="logdate" />
            <asp:BoundField DataField="logtime" HeaderText="LogTime" 
                SortExpression="logtime" />
            <asp:BoundField DataField="actor" HeaderText="Actor" SortExpression="actor" />
        </Columns>
    </asp:GridView>
  <%--  <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [uname], [logdate], [logtime], [actor] FROM [logdetails] WHERE ([actor] = @actor)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Patient" Name="actor" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>--%>
    
    
</td></tr></table>
     <h3 style="background-color: #CCCCCC">Lab Assistant Log Details</h3>
<table><tr><td>
    <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" 
        EmptyDataText="No Records Found" >
        <Columns>
            <asp:BoundField DataField="uname" HeaderText="Name" SortExpression="uname" />
            <asp:BoundField DataField="logdate" HeaderText="LogDate" 
                SortExpression="logdate" />
            <asp:BoundField DataField="logtime" HeaderText="LogTime" 
                SortExpression="logtime" />
            <asp:BoundField DataField="actor" HeaderText="Actor" SortExpression="actor" />
        </Columns>
    </asp:GridView>
   <%-- <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [uname], [logdate], [logtime], [actor] FROM [logdetails] WHERE ([actor] = @actor)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Lab Assistant" Name="actor" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    --%>
    
</td></tr></table>
    <h3 style="background-color: #CCCCCC">Medical Shop Log Details</h3>
<table><tr><td>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        EmptyDataText="No Records Found" >
        <Columns>
            <asp:BoundField DataField="uname" HeaderText="Name" SortExpression="uname" />
            <asp:BoundField DataField="logdate" HeaderText="LogDate" 
                SortExpression="logdate" />
            <asp:BoundField DataField="logtime" HeaderText="LogTime" 
                SortExpression="logtime" />
            <asp:BoundField DataField="actor" HeaderText="Actor" SortExpression="actor" />
        </Columns>
    </asp:GridView>
  <%--  <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [uname], [logdate], [logtime], [actor] FROM [logdetails] WHERE ([actor] = @actor)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Medical" Name="actor" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>--%>
    
    
</td></tr></table>
<h3 style="background-color: #CCCCCC">Agent Log Details</h3>
<table><tr><td>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        EmptyDataText="No Records Found">
        <Columns>
            <asp:BoundField DataField="uname" HeaderText="Name" SortExpression="uname" />
            <asp:BoundField DataField="logdate" HeaderText="LogDate" 
                SortExpression="logdate" />
            <asp:BoundField DataField="logtime" HeaderText="LogTime" 
                SortExpression="logtime" />
            <asp:BoundField DataField="actor" HeaderText="Actor" SortExpression="actor" />
        </Columns>
    </asp:GridView>
  <%--  <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [uname], [logdate], [logtime], [actor] FROM [logdetails] WHERE ([actor] = @actor)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Agent" Name="actor" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>--%>
    
    
</td></tr></table>
<h3 style="background-color: #CCCCCC">Nurse Log Details</h3>
<table><tr><td>
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
        EmptyDataText="No Records Found" >
        <Columns>
            <asp:BoundField DataField="uname" HeaderText="Name" SortExpression="uname" />
            <asp:BoundField DataField="logdate" HeaderText="LogDate" 
                SortExpression="logdate" />
            <asp:BoundField DataField="logtime" HeaderText="LogTime" 
                SortExpression="logtime" />
            <asp:BoundField DataField="actor" HeaderText="Actor" SortExpression="actor" />
        </Columns>
    </asp:GridView>
   
    
   
</td></tr></table>
    <h3 style="background-color: #CCCCCC">Receptionist Log Details</h3>
<table><tr><td>
    <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" 
        EmptyDataText="No Records Found">
        <Columns>
            <asp:BoundField DataField="uname" HeaderText="Name" SortExpression="uname" />
            <asp:BoundField DataField="logdate" HeaderText="LogDate" 
                SortExpression="logdate" />
            <asp:BoundField DataField="logtime" HeaderText="LogTime" 
                SortExpression="logtime" />
            <asp:BoundField DataField="actor" HeaderText="Actor" SortExpression="actor" />
        </Columns>
    </asp:GridView>
  <%--  <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [uname], [logdate], [logtime], [actor] FROM [logdetails] WHERE ([actor] = @actor)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Receptionist" Name="actor" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>--%>
    
   
</td></tr></table>
                </td>
            <td class="auto-style2"></td>
            <td valign="top">
                <br />
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Cambria" OnClick="Button1_Click" Text="Clear Log" />
                <br />
                <br />
                LOG CHART:<br />
                <br />
                <asp:Chart ID="Chart1" runat="server" BackColor="RoyalBlue" DataSourceID="SqlDataSource8">
                    <Series>
                        <asp:Series Name="Series1" Color="Firebrick" Font="Cambria, 12pt, style=Bold" XValueMember="actname" YValueMembers="notime"></asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1" BackColor="BlueViolet" BackGradientStyle="TopBottom">
                            <AxisY Title="No of times logged in">
                            </AxisY>
                            <AxisX Title="Actor Name">
                            </AxisX>
                        </asp:ChartArea>
                    </ChartAreas>
                    <BorderSkin BackColor="Gainsboro" SkinStyle="Emboss" />
                </asp:Chart>
                <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [logchart]"></asp:SqlDataSource>
                
            </td>
        </tr>
    </table>
</asp:Content>

