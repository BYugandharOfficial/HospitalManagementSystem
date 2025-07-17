<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ReceptionistLogin.aspx.cs" Inherits="Hospital_Management_System.ReceptionistLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
           <style type="text/css">
    .style1 {
        width: 100%;
    }

    .auto-style3 {
        width: 101%;
        height: 500px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="auto-style3">
    <tr>
        <td class="tblhead">
            Welcome to Receptionist</td>
    </tr>
    <tr>
        <td>
          
            <asp:Image ID="Image2" runat="server" ImageUrl="img/Receptionist.jpg"  Height="495px" Width="1220px" /> 

            </td>
    </tr>
    <tr>
        <%--<td style="text-align: center">

            <asp:Label ID="lblRole" runat="server" Text="Label"></asp:Label>
        </td>--%>
    </tr>
</table>
</asp:Content>
