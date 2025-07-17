<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="BillReport.aspx.cs" Inherits="Hospital_Management_System.BillReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .auto-style3 {
            margin-left: 25px;
        }
    </style>
    <script type ="text/javascript">
        function triggerPostBack() {
            _doPostBack('<%=Button1.UniqueID %>', '');
        }
    </script>
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

    <div id="dvGrid" style="padding: 10px; " class="auto-style6">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="" align="right" height="" width="95px" >
                    <asp:Button ID="Button1" runat="server" Text="Export to PDF" ForeColor="#3333ff"  OnClick="Button1_Click" align="right" Width="96px" CssClass="" />
                
                    </div>
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="modern-gridview"
                    BorderWidth="1px" CellPadding="2" GridLines="Both" Width="1178px" Height="480px"
                 AllowPaging="True" PageSize="8" OnPageIndexChanging="GridView1_PageIndexChanging" AutoPostBack="false">
                    <Columns>
                        <asp:BoundField DataField="PatientId" HeaderText="Patient ID" />
                        <asp:BoundField DataField="PatientName" HeaderText="Patient Name" />
                        <asp:BoundField DataField="AppointmentDate" HeaderText="Appointment" DataFormatString="{0:dd/MM/yyyy}" />
                        <asp:BoundField DataField="DoctorName" HeaderText="Doctor Name" />
                        <asp:BoundField DataField="Problem" HeaderText="Problem" />
                        <asp:BoundField DataField="ConsultFee" HeaderText="Consult Fee" DataFormatString="{0:C}" />
                        <asp:BoundField DataField="LabFee" HeaderText="Lab Fee" DataFormatString="{0:C}" />
                        <asp:BoundField DataField="MedicineCost" HeaderText="Medicine Cost" DataFormatString="{0:C}" />
                        <asp:BoundField DataField="RoomRent" HeaderText="Room Rent" DataFormatString="{0:C}" />
                        <asp:BoundField DataField="Total" HeaderText="Total" DataFormatString="{0:C}" />
                        <asp:BoundField DataField="Paid" HeaderText="Paid" DataFormatString="{0:C}" />
                    </Columns>
                    <PagerSettings  Mode="NumericFirstLast" PageButtonCount="4" FirstPageText="First" LastPageText="Last"/>
                     <HeaderStyle BackColor="#3366cc" ForeColor="White" Font-Bold="True" />
                     <RowStyle BackColor="#f9f9f9" />
                  
                      <AlternatingRowStyle BackColor="#ffffff" />
                     <PagerStyle BackColor="#cccccc" ForeColor="Black" HorizontalAlign="Center" />

                </asp:GridView>
                </div>
            </ContentTemplate>
           
        </asp:UpdatePanel>
                

    </div>
</asp:Content>
