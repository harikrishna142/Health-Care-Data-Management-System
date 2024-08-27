<%@ Page Title="" Language="C#" MasterPageFile="~/patient.master" AutoEventWireup="true"
    CodeFile="patientreport.aspx.cs" Inherits="patientreport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style3
        {
            width: 138px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table>
        <tr>
            <td>
                WELCOME&nbsp;&nbsp;: Your ID is&nbsp;
                <asp:Label ID="lblpatient" runat="server"></asp:Label>
                <asp:Label ID="lblpatdecry" runat="server" Visible="False"></asp:Label>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
                CellPadding="3" CellSpacing="1" DataSourceID="SqlDataSource1" GridLines="None" 
                Width="1752px" onselectedindexchanged="GridView1_SelectedIndexChanged" 
                AllowSorting="True" Font-Size="Small">
                <Columns>
                    <asp:BoundField DataField="tid" HeaderText="TID" 
                        SortExpression="tid" />
                    <asp:BoundField DataField="tdate" HeaderText="Date" 
                        SortExpression="tdate" />
                    <asp:BoundField HeaderText="Time" DataField="ttime" SortExpression="ttime"/>
                    <asp:BoundField HeaderText="PAT Id" DataField="pid" SortExpression="pid" />
                    <asp:BoundField DataField="pname" HeaderText="Name" 
                        SortExpression="pname" />
                    <asp:BoundField DataField="docname" HeaderText="Doctorname" 
                        SortExpression="docname" />
                    <asp:BoundField DataField="hosname" HeaderText="Hospital" 
                        SortExpression="hosname" />
                    <asp:BoundField DataField="hosloc" HeaderText="Hos. Location" SortExpression="hosloc" />
                    <asp:BoundField DataField="dises" HeaderText="Disease" SortExpression="dises" />
                    <asp:BoundField DataField="type" HeaderText="Type" SortExpression="type" />
                    <asp:BoundField DataField="symp" HeaderText="Symptoms" 
                        SortExpression="symp" />
                    <asp:BoundField DataField="medi" HeaderText="Medicines Given" 
                        SortExpression="medi" />
                    <asp:BoundField DataField="descrip" HeaderText="Doc. Remarks" SortExpression="descrip" />
                    <asp:BoundField DataField="labasid" HeaderText="Lab Ass Id" SortExpression="labasid" />
                    <asp:BoundField DataField="tn1" HeaderText="Test 1" SortExpression="tn1" />
                    <asp:BoundField DataField="tr1" HeaderText="Range" SortExpression="tr1" />
                    <asp:BoundField DataField="tn2" HeaderText="Test 2" SortExpression="tn2" />
                    <asp:BoundField DataField="tr2" HeaderText="Range" SortExpression="tr2" />
                    <asp:BoundField DataField="tn3" HeaderText="Test 3" SortExpression="tn3" />
                    <asp:BoundField DataField="tr3" HeaderText="Range" SortExpression="tr3" />
                    <asp:BoundField DataField="tn4" HeaderText="Test 4" SortExpression="tn4" />
                    <asp:BoundField DataField="tr4" HeaderText="Range" SortExpression="tr4" />
                    <asp:BoundField DataField="tn5" HeaderText="Test 5" SortExpression="tn5" />
                    <asp:BoundField DataField="tr5" HeaderText="Range " SortExpression="tr5" />
                    <asp:BoundField DataField="tn6" HeaderText="Test 6" SortExpression="tn6" />
                    <asp:BoundField DataField="tr6" HeaderText="Range" SortExpression="tr6" />
                    <asp:BoundField DataField="nurseid" HeaderText="Nurse id" SortExpression="nurseid" />
                    <asp:BoundField DataField="nurseremarks" HeaderText="Nurse remarks" SortExpression="nurseremarks" />
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
            </td>
        </tr>
    </table>
    <center>
<table>

    <tr>
        <td>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [tdate], [ttime], [pid], [pname], [docname], [hosname], [hosloc], [dises], [type], [symp], [medi], [descrip], [tn1], [tr1], [tn2], [tr2], [tn3], [tr3], [tn4], [tr4], [tn5], [tr5], [tn6], [tr6], [labasid], [nurseremarks], [nurseid], [tid] FROM [treatment] WHERE ([pid] = @pid)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblpatient" Name="pid" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
                      
        </td>
    </tr>
</table>
<table style="height: 438px; width: 574px">
    <tr>
        <td align="left" class="auto-style1" >
            <asp:Label ID="Label27" runat="server" Text="Treatment ID"></asp:Label>
        </td>
        <td align="left" class="auto-style4">
            <asp:Label ID="lbltid" runat="server" Text="----------"></asp:Label>
        </td>
    </tr>
<tr>
        <td align="left" class="auto-style1" >
            <asp:Label ID="Label9" runat="server" Text="Reported Date"></asp:Label>
        </td>
        <td align="left" class="auto-style4">
            <asp:Label ID="lbldate" runat="server" Text="----------"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="left" class="auto-style1" >
            <asp:Label ID="Label10" runat="server" Text="Reported Time"></asp:Label>
        </td>
        <td align="left" class="auto-style4">
            <asp:Label ID="lbltime" runat="server" Text="----------"></asp:Label>
        </td>
    </tr>
     <tr>
        <td align="left" class="auto-style1" >
            <asp:Label ID="Label11" runat="server" Text="Patient ID"></asp:Label>
        </td>
        <td align="left" class="auto-style4">
            <asp:Label ID="lblpatientid" runat="server" Text="----------" ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="left" class="auto-style1" >
            <asp:Label ID="Label1" runat="server" Text="Doctor Name"></asp:Label>
        </td>
        <td align="left" class="auto-style4">
            <asp:Label ID="lbldocname" runat="server" Text="----------"></asp:Label>
        </td>
    </tr>
     <tr>
        <td align="left" class="auto-style1" >
            <asp:Label ID="Label2" runat="server" Text="Hospital Name"></asp:Label>
        </td>
        <td align="left" class="auto-style4">
            <asp:Label ID="lblhosname" runat="server" Text="----------"></asp:Label>
        </td>
    </tr>
     <tr>
        <td align="left" class="auto-style1" >
            <asp:Label ID="Label3" runat="server" Text="Location"></asp:Label>
        </td>
        <td align="left" class="auto-style4">
            <asp:Label ID="lblloc" runat="server" Text="----------"></asp:Label>
        </td>
    </tr>
     <tr>
        <td align="left" class="auto-style1" >
            <asp:Label ID="Label4" runat="server" Text="Disease"></asp:Label>
        </td>
        <td align="left" class="auto-style4">
            <asp:Label ID="lbldisease" runat="server" Text="----------"></asp:Label>
        </td>
    </tr>
     <tr>
        <td align="left" class="auto-style1" >
            <asp:Label ID="Label5" runat="server" Text="Type"></asp:Label>
        </td>
        <td align="left" class="auto-style4">
            <asp:Label ID="lbltype" runat="server" Text="----------"></asp:Label>
        </td>
    </tr>
     <tr>
        <td align="left" class="auto-style1" >
            <asp:Label ID="Label6" runat="server" Text="Symptom"></asp:Label>
        </td>
        <td align="left" class="auto-style4">
            <asp:Label ID="lblsymptom" runat="server" Text="----------"></asp:Label>
        </td>
    </tr>
     <tr>
        <td align="left" class="auto-style1" >
            <asp:Label ID="Label7" runat="server" Text="Medicine Prescribed"></asp:Label>
        </td>
        <td align="left" class="auto-style4">
            <asp:Label ID="lblmedicine" runat="server" Text="----------"></asp:Label>
        </td>
    </tr>
     <tr>
        <td align="left" class="auto-style1" >
            <asp:Label ID="Label8" runat="server" Text="Doctor Remarks"></asp:Label>
        </td>
        <td align="left" class="auto-style4">
            <asp:Label ID="lbldescription" runat="server" Text="----------" ForeColor="#CC0000"></asp:Label>
        </td>
    </tr>
      <tr>
        <td align="left" class="auto-style1" >
            <asp:Label ID="Label12" runat="server" Text="Lab Assis ID"></asp:Label>
        </td>
        <td align="left" class="auto-style4">
            <asp:Label ID="lbllabid" runat="server" Text="----------"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="left" class="auto-style1" >
            <asp:Label ID="Label13" runat="server" Text="Test Name 1"></asp:Label>
        </td>
        <td align="left" class="auto-style4">
            <asp:Label ID="lblt1" runat="server" Text="----------" Font-Bold="True" ForeColor="#660066"></asp:Label>
        </td>
        <td>
            <asp:Label ID="Label21" runat="server" Text="Range"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblr1" runat="server" Text="----------" ForeColor="#660066"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="left" class="auto-style1" >
            <asp:Label ID="Label14" runat="server" Text="Test Name 2"></asp:Label>
        </td>
        <td align="left" class="auto-style4">
            <asp:Label ID="lblt2" runat="server" Text="----------" Font-Bold="True" ForeColor="#660066"></asp:Label>
        </td>
         <td>
            <asp:Label ID="Label22" runat="server" Text="Range"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblr2" runat="server" Text="----------" ForeColor="#660066"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="left" class="auto-style1" >
            <asp:Label ID="Label15" runat="server" Text="Test Name 3"></asp:Label>
        </td>
        <td align="left" class="auto-style4">
            <asp:Label ID="lblt3" runat="server" Text="----------" ForeColor="#660066"></asp:Label>
        </td>
         <td>
            <asp:Label ID="Label23" runat="server" Text="Range"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblr3" runat="server" Text="----------" ForeColor="#660066"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="left" class="auto-style1" >
            <asp:Label ID="Label16" runat="server" Text="Test Name 4"></asp:Label>
        </td>
        <td align="left" class="auto-style4">
            <asp:Label ID="lblt4" runat="server" Text="----------" ForeColor="#660066"></asp:Label>
        </td>
         <td>
            <asp:Label ID="Label24" runat="server" Text="Range"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblr4" runat="server" Text="----------" ForeColor="#660066"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="left" class="auto-style1" >
            <asp:Label ID="Label17" runat="server" Text="Test Name 5"></asp:Label>
        </td>
        <td align="left" class="auto-style4">
            <asp:Label ID="lblt5" runat="server" Text="----------" ForeColor="#660066"></asp:Label>
        </td>
         <td>
            <asp:Label ID="Label25" runat="server" Text="Range"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblr5" runat="server" Text="----------" ForeColor="#660066"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="left" class="auto-style2" >
            <asp:Label ID="Label18" runat="server" Text="Test Name 6"></asp:Label>
        </td>
        <td align="left" class="auto-style5">
            <asp:Label ID="lblt6" runat="server" Text="----------" ForeColor="#660066"></asp:Label>
        </td>
         <td class="auto-style3">
            <asp:Label ID="Label26" runat="server" Text="Range"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:Label ID="lblr6" runat="server" Text="----------" ForeColor="#660066"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="left" class="auto-style1" >
            <asp:Label ID="Label19" runat="server" Text="Nurse Id"></asp:Label>
        </td>
        <td align="left" class="auto-style4">
            <asp:Label ID="lblnurseid" runat="server" Text="----------"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="left" class="auto-style1" >
            <asp:Label ID="Label20" runat="server" Text="Nurse Remarks"></asp:Label>
        </td>
        <td align="left" class="auto-style4">
            <asp:Label ID="lblnurseremarks" runat="server" Text="----------" ForeColor="#FF3300"></asp:Label>
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
</center>
</asp:Content>
