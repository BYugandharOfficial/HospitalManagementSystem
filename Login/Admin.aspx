<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Hospital_Management_System.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <center>
            <table class="auto-style3">
                <tr>
                    <td class="tblhead" height="492px" width="1153px">Welcome to Admin</td>
                </tr>
                <tr>
                    <td></td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>

                </tr>
                <tr>

                    <td colspan="2" style="font-size: large; font-weight: bold; color: blueviolet" textalign="Center" class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; New Doctor</td>
                </tr>

                <tr>
                    <td class="auto-style2">&nbsp;</td>

                </tr>
                
                <tr>
                    <td class="auto-style2">DoctorName:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtdoctorname" runat="server" CssClass="Form-Control" PlaceHolder="Please Enter Doctor Name" Height="22px" Width="236px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Specialization:</td>
                    <td class="auto-style4">
                         <asp:DropDownList ID="ddlspecialization" runat="server" CssClass="Dropdown" PlaceHolder="Please Select Specilization" Height="22px" Width="236px">
                           <asp:ListItem>  Select-Specialization  </asp:ListItem>
                            <asp:ListItem>Cardiologist</asp:ListItem>
                           <asp:ListItem>Gastroenterologist</asp:ListItem>
                           <asp:ListItem>Orthopedic</asp:ListItem>
                           <asp:ListItem>Endocrinologist</asp:ListItem>
                           <asp:ListItem>Dermatologist</asp:ListItem>
                           <asp:ListItem>General Physician</asp:ListItem>
                           <asp:ListItem>Dermatologist</asp:ListItem>
                           <asp:ListItem>Neurosurgeon</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">ContactNumber:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtContactNumber" runat="server" CssClass="Form-Control" PlaceHolder="Please Enter Contact Number" Height="22px" Width="236px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">EmailId:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtEmailId" runat="server" CssClass="Form-Control" PlaceHolder="Please Enter EmailId" Height="22px" Width="236px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Qualification:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtQualification" runat="server" CssClass="Form-Control" PlaceHolder="Please Enter Qualification" Height="22px" Width="236px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                <td class="auto-style2">Gender:</td>
                <td class="auto-style4">
                   <asp:CheckBoxList ID="chkgender" runat="server" CssClass="Form-Control" PlaceHolder="Please Enter Gender" Height="22px" Width="236px" RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Transgender</asp:ListItem>
                   </asp:CheckBoxList>
                </td>
                </tr>
             <tr>
                 <td class="auto-style2">Experience:</td>
                 <td class="auto-style4">
                     <asp:TextBox ID="txtExperience" runat="server" CssClass="Form-Control" PlaceHolder="Please Enter Experience" Height="22px" Width="236px"></asp:TextBox>
                 </td>
             </tr>
                <tr>
                    <td class="auto-style2">AvailableDaysTimings:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtAvailable" runat="server" TextMode="Date" CssClass="Dropdown" PlaceHolder="Please Select Date" Height="22px" Width="236px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Status:</td>
                    <td class="auto-style4">
                         <asp:DropDownList ID="ddlStatus" runat="server" CssClass="Dropdown" PlaceHolder="Please Select Status" Height="22px" Width="236px">
                             <asp:ListItem>Select-Status</asp:ListItem>
                          <asp:ListItem>Active</asp:ListItem>
                          <asp:ListItem>InActive</asp:ListItem>
                           </asp:DropDownList>
                    </td>
                </tr>
                 <tr>
               <td class="auto-style2">&nbsp;</td>

                    </tr>
                 <tr>
             <td class="auto-style2">&nbsp;</td>

             </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style4">
                        <asp:Button ID="Button1" runat="server" Font-Bold="True" CssClass="Submit"  Width="57px" Height="29px" Text="Submit" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                  <td class="auto-style2"></td>
                   <td class="auto-style4">
                       <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
    </td>
</tr>
            </table>
        </center>

    </div>
    
</asp:Content>
