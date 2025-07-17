<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Billing.aspx.cs" Inherits="Hospital_Management_System.Billing" %>
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
    <div>
        <center>
            <table class="auto-style1">
                <tr>

                    <td colspan="2" style="font-size: large; font-weight: bold; color: blueviolet"  textalign="Center" class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Billing Details</td>
                </tr>

                <tr>
                    <td class="auto-style2">&nbsp;</td>

                </tr>
                  <tr>
                  <td class="auto-style2">&nbsp;</td>

                 </tr>
                
                <tr>
                    <td class="auto-style2">PatientId:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtPatientId" runat="server" CssClass="Form-Control" PlaceHolder="Please Enter PatientId" Height="23px" Width="236px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">PatientName:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtPatientName" runat="server" CssClass="Form-Control" PlaceHolder="Please Enter Patient Name" Height="23px" Width="236px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">ConsultFee:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtConsultfee" runat="server" CssClass="Form-Control" PlaceHolder="Please Enter ConsultFee" Height="23px" Width="236px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">LabFee:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtLabFee" runat="server" CssClass="Form-Control" PlaceHolder="Please Enter LabFee" Height="23px" Width="236px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">MedicineCost:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtMedicineCost" runat="server" CssClass="Form-Control" PlaceHolder="Please Enter MedicineCost"  Height="23px" Width="236px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">RoomRent:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtRoomRent" runat="server" CssClass="Form-Control" PlaceHolder="Please Enter RoomRent" Height="23px" Width="236px"></asp:TextBox>
                    </td>
                </tr>
              
                <tr>
                    <td class="auto-style2">Paid:</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="ddlpaid" runat="server" CssClass="Dropdown" Height="25px" Width="235px">
                            <asp:ListItem>Payment-Status</asp:ListItem>
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                       <tr>
                      <td class="auto-style2">&nbsp;</td>
                       </tr>
                      <tr> 
                    <td class="auto-style2"></td>
                    <td class="auto-style4">
                       
                    </td>
                </tr>
                <tr> 
                    <td class="auto-style2"></td>
                    <td class="auto-style4">
                       <asp:Button ID="Button1" runat="server" CssClass="Submit" Font-Bold="true" Width="57px" Height="29px" border-radius="15px" OnClick="Button1_Click"  Text="Submit" />
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
