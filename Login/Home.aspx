<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Hospital_Management_System.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <style type="text/css">
    .style1 {
        width: 100%;
    }

    .auto-style3 {
        width: 100%;
        height: 500px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style3">
    <tr>
        <td class="tblhead">
            Welcome to Doctor</td>
    </tr>
    <tr>
        <td>
           <asp:Image ID="Image1" runat="server" ImageUrl="img/Doctors.jpg"  Height="495px" Width="757px" /> 
            <asp:Image ID="Image2" runat="server" ImageUrl="img/Receptionist.jpg"  Height="495px" Width="757px" /> 

            </td>
    </tr>
    <tr>
        <%--<td style="text-align: center">

            <asp:Label ID="lblRole" runat="server" Text="Label"></asp:Label>
        </td>--%>
    </tr>
</table>
</asp:Content>

