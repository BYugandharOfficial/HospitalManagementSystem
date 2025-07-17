<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Patients.aspx.cs" Inherits="Hospital_Management_System.Patients" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
 .style1
 {
     width: 100%;
 }
     .auto-style3 {
     width: 101%;
     height: 550px;
 }
     </style>

 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <asp:ScriptManager ID="ScriptManager1" runat="server">
 </asp:ScriptManager>

 <div id="dvGrid" style="padding: 10px; width: 700px">
     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
         <ContentTemplate>


             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="modern-gridview"
     GridLines="Both" Width="1178px" Height="450px"
  AllowPaging="True" PageSize="9" OnPageIndexChanging="GridView1_PageIndexChanging">
       <Columns>
           <asp:BoundField DataField="PatientId" HeaderText="Patient ID" />
           <asp:BoundField DataField="PatientName" HeaderText="Patient Name" />
           <asp:BoundField DataField="Age" HeaderText="Age" />
           <asp:BoundField DataField="Gender" HeaderText="Gender" />
           <asp:BoundField DataField="AppointmentDate" HeaderText="AppointmentDate" DataFormatString="{0:dd/MM/yyyy}" />
           <asp:BoundField DataField="DoctorId" HeaderText="DoctorId" />
           <asp:BoundField DataField="DoctorName" HeaderText="DoctorName" />
           <asp:BoundField DataField="Department" HeaderText="Department" />
           <asp:BoundField DataField="Problem" HeaderText="Problem" />
           <asp:BoundField DataField="VisitStatus" HeaderText="VisitStatus" />
           <asp:BoundField DataField="CheckupCompleted" HeaderText="Checkup" />
           <asp:BoundField DataField="DaignosisTest" HeaderText="Test" />
       </Columns>
           <PagerSettings Mode="NumericFirstLast" PageButtonCount="4" FirstPageText="First" LastPageText="Last" />
           <HeaderStyle BackColor="#3366cc" ForeColor="White" Font-Bold="True" />
          <RowStyle BackColor="#f9f9f9" />         
          <AlternatingRowStyle BackColor="#ffffff" />
          <PagerStyle BackColor="#cccccc" ForeColor="Black" HorizontalAlign="Center" />
       </asp:GridView>

                 </ContentTemplate>
</asp:UpdatePanel>
     </div>
</asp:Content>
