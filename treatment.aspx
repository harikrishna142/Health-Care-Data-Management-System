<%@ Page Title="" Language="C#" MasterPageFile="~/doctor.master" AutoEventWireup="true" CodeFile="treatment.aspx.cs" Inherits="treatment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td>

           
    <table style="height: 667px; width: 550px">
        <tr>
            <td style="font-size: medium; color: #800000">
                ENTER TREATMENT DETAILS:
            </td>
        </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Date"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lbldate" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Time"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lbltime" runat="server"></asp:Label>
        </td>
    </tr>
      <tr>
        <td>
            <asp:Label ID="Label5" runat="server" Text="Doctor Name"></asp:Label>
        &nbsp;&amp; ID</td>
        <td>
            <asp:Label ID="lbldocname" runat="server"></asp:Label>
            -
            <asp:Label ID="lbldocid" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
        <tr>
            <td>
                <asp:Label ID="Label13" runat="server" Text="Treatment Id"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbltid" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Patient ID"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True" 
                Font-Names="Times New Roman" AutoPostBack="True" AppendDataBoundItems="True"
                DataSourceID="SqlDataSource1" DataTextField="patid" DataValueField="patid" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>--Select Patient--</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [patid] FROM [patdet]"></asp:SqlDataSource>
            
            
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Patient Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtpname" runat="server" Width="167px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtpname" Font-Bold="True" ForeColor="Red" ValidationGroup="phr"></asp:RequiredFieldValidator>
            <asp:Label ID="lblpuname" runat="server" Visible="False"></asp:Label>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="Label11" runat="server" Text="Hospital Name"></asp:Label>
        </td>
        <td>
            
            <asp:DropDownList ID="drophospitalname" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="hosname" DataValueField="hosname" OnSelectedIndexChanged="drophospitalname_SelectedIndexChanged"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [hosname] FROM [hospdet] WHERE ([docid] = @docid)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lbldocid" Name="docid" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="Label12" runat="server" Text="Hospital Location"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txthosloc" runat="server" Width="167px" BackColor="#99CCFF" BorderStyle="None" Enabled="False"></asp:TextBox>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="Label6" runat="server" Text="Disease"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtdisease" runat="server" Width="232px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtdisease" Font-Bold="True" ForeColor="Red" ValidationGroup="phr"></asp:RequiredFieldValidator>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="Label7" runat="server" Text="Type"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txttype" runat="server" Width="232px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txttype" Font-Bold="True" ForeColor="Red" ValidationGroup="phr"></asp:RequiredFieldValidator>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="Label8" runat="server" Text="Symptoms"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtsymptoms" runat="server" Width="239px" Height="51px" 
                TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtsymptoms" Font-Bold="True" ForeColor="Red" ValidationGroup="phr"></asp:RequiredFieldValidator>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="Label9" runat="server" Text="Medicine Prescribed"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtmedicine" runat="server" Width="239px" Height="47px" 
                TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="txtmedicine" Font-Bold="True" ForeColor="Red" ValidationGroup="phr"></asp:RequiredFieldValidator>
        </td>
    </tr>
     <tr>
        <td>
            <asp:Label ID="Label10" runat="server" Text="Remarks"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtdescription" runat="server" Height="56px" 
                TextMode="MultiLine" Width="239px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="txtdescription" Font-Bold="True" ForeColor="Red" ValidationGroup="phr"></asp:RequiredFieldValidator>
        </td>
    </tr>
     <tr>
        <td align="center">
            <asp:Button ID="Button1" runat="server" Text="SAVE" Font-Bold="True" 
                Font-Names="Times New Roman" Width="83px" onclick="Button1_Click" ValidationGroup="phr" />
        </td>
        <td>
            <asp:Button ID="Button2" runat="server" Text="CANCEL" Font-Bold="True" 
                Font-Names="Times New Roman" />
        </td>
    </tr>
</table>
     </td>
            <td>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/img/treatment.jpg" />
            </td>
        </tr>
    </table>
</asp:Content>

