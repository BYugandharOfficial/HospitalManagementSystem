<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DoctorLogin.aspx.cs" Inherits="Hospital_Management_System.DoctorLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="auto-style3" >
 <tr>
     <td class="tblhead">
         Welcome to Doctor</td>
 </tr>
 <tr>
     <td>
        <asp:Image ID="Image1" runat="server" ImageUrl="img/Doctors.jpg"  Height="492px" Width="1153px" /> 
    </td>
 </tr>       
</table>
</asp:Content>
