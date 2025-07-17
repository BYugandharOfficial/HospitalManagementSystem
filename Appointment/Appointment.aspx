<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Appointment.aspx.cs" Inherits="Hospital_Management_System.Appointment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    
   
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <center>
            <table class="auto-style1">
                <tr>

                    <td colspan="2" style="font-size: large; font-weight: bold; color:blueviolet" textalign="Center" class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; New Appointment</td>
                </tr>
              
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    
                </tr>
                <tr>
                    <td class="auto-style2">PatientName:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtPatientName" runat="server" CssClass="Form-Control" PlaceHolder="Please Enter Patient Name" Height="22px" Width="236px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Gender:</td>
                    <td class="auto-style4">
                        <asp:CheckBoxList ID="chkgender" runat="server" CssClass="Form-Control" Height="25px" Width="235px" RepeatDirection="Horizontal">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Transgender</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Age:</td>
                    <td class="auto-style4">                     
                        <asp:TextBox ID="txtage" runat="server" CssClass="Form-Control" PlaceHolder="Please Enter Age" Height="22px" Width="236px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">ContactNumber:</td>
                    <td class="auto-style4">

                        <asp:TextBox ID="txtContactNumber" runat="server" CssClass="Form-Control" PlaceHolder="Please Enter Contact Number" Height="22px" Width="236px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">AppointmentDate:</td>
                    <td class="auto-style4">                 
                        <asp:TextBox ID="txtAppointmentDate" runat="server" CssClass="Dropdown" TextMode="Date" Height="25px" Width="236px"></asp:TextBox>
                        
                    </td>
                </tr>
                
                <tr>
                    <td class="auto-style2">DoctorId:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtdocterid" runat="server" CssClass="Form-Control" PlaceHolder="Please Enter DoctorId" Height="22px" Width="236px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">DoctorName:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtdoctername" runat="server" CssClass="Form-Control" PlaceHolder="Please Enter Doctor Name " Height="22px" Width="236px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Department:</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="ddldepartment" runat="server"  Height="25px" Width="235px" CssClass="Dropdown">
                            <asp:ListItem>Select-Specialist</asp:ListItem>
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
                    <td class="auto-style2">VisitStatus:</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="ddlVisitStatus" runat="server" CssClass="Dropdown" Height="25px" Width="235px">
                             <asp:ListItem>Select-VisitStatus</asp:ListItem>
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:DropDownList>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Problem:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtProblem" runat="server" CssClass="Form-Control" PlaceHolder="Please Enter Problem" Height="22px" Width="236px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">CheckupCompleted:</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="ddlchkcmp" runat="server" CssClass="Dropdown" Height="25px" Width="235px">
                             <asp:ListItem>Select-Checkup</asp:ListItem>
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:DropDownList>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">DiagnosisTest:</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="ddldgns" runat="server" CssClass="Dropdown" Height="25px" Width="235px">
                            <asp:ListItem>Select-DiagnosisTest</asp:ListItem>
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:DropDownList>

                    </td>
                </tr>
               <tr>
                    <td class="auto-style2">&nbsp;</td>
               </tr>
                <tr>
                        <td class="auto-style2">&nbsp;</td>
                       <td class="auto-style4">
                        <asp:Button ID="btnAdd" runat="server" Font-Bold="True" CssClass="Submit"  Width="57px" Height="29px" Text="Submit" OnClick="BtnAdd_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <%--<tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Button ID="btn" runat="server" Text="Add New" Font-Bold="True" ForeColor="BlueViolet" OnClick="btn_Click1" Width="128px" />
                    </td>
                </tr>--%>
                <%--<tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label ID="lblmsg2" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>--%>
            </table>
        </center>

    </div>

</asp:Content>

