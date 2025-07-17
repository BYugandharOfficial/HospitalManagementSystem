<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Doctor.aspx.cs" Inherits="Hospital_Management_System.Doctor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">
    .style1 {
        width: 870px;
    }

    .auto-style3 {
        width: 870px;
        height: 430px;
    }
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:RadioButtonList ID="rblRole" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="RblRole_SelectedIndexChanged">
        <asp:ListItem Text="Doctors Details" Value="Doctors"></asp:ListItem>
        <asp:ListItem Text="Patients Checkup" Value="Patients"></asp:ListItem>
    </asp:RadioButtonList>
    <asp:Panel ID="pnlDoctor" runat="server" Visible="false" BorderStyle="None" BorderWidth="1px" Padding="10">
        <div id="dvGrid" style="padding: 10px; width: 800px">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>

                    <asp:GridView ID="GvDoctors" runat="server" AutoGenerateColumns="False" CssClass="modern-gridview"
                        BorderWidth="1px" CellPadding="2" GridLines="Both" Width="870px" Height="420px" DataKeyNames=""
                        PageSize="5" AllowPaging="True"
                        OnPageIndexChanging="GvDoctors_PageIndexChanging" OnRowEditing="GvDoctors_RowEditing"
                        OnRowUpdating="GvDoctors_RowUpdating" OnRowCancelingEdit="GvDoctors_RowCancelingEdit">
                        <Columns>
                            <asp:TemplateField HeaderText="DoctorId" ItemStyle-Width="30px">
                                <ItemTemplate>
                                    <asp:Label ID="lblDoctorId" runat="server" Text='<%# Eval("DoctorId") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtDoctorId" runat="server" Text='<%# Eval("DoctorId") %>' Width="40px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemStyle Width="40px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="DoctorName" ItemStyle-Width="70px">
                                <ItemTemplate>
                                    <asp:Label ID="lblDoctorName" runat="server" Text='<%# Eval("DoctorName") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtDoctorName" runat="server" Text='<%# Eval("DoctorName") %>' Width="70px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemStyle Width="70px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Specialization" ItemStyle-Width="100px">
                                <ItemTemplate>
                                    <asp:Label ID="lblSpecialization" runat="server" Text='<%# Eval("Specialization") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtSpecialization" runat="server" Text='<%# Eval("Specialization") %>' Width="100px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemStyle Width="100px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="ContactNumber" ItemStyle-Width="75px">
                                <ItemTemplate>
                                    <asp:Label ID="lblContactNumber" runat="server" Text='<%# Eval("ContactNumber") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtContactNumber" runat="server" Text='<%# Eval("ContactNumber") %>' Width="75px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemStyle Width="75px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="EmailId" ItemStyle-Width="83px">
                                <ItemTemplate>
                                    <asp:Label ID="lblEmailId" runat="server" Text='<%# Eval("EmailId") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtEmailId" runat="server" Text='<%# Eval("EmailId") %>' Width="83px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemStyle Width="83px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Qualification" ItemStyle-Width="47px">
                                <ItemTemplate>
                                    <asp:Label ID="lblQualification" runat="server" Text='<%# Eval("Qualification") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtQualification" runat="server" Text='<%# Eval("Qualification") %>' Width="47px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemStyle Width="47px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Gender" ItemStyle-Width="50px">
                                <ItemTemplate>
                                    <asp:Label ID="lblGender" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtGender" runat="server" Text='<%# Eval("Gender") %>' Width="50px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemStyle Width="50px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Experience" ItemStyle-Width="44px">
                                <ItemTemplate>
                                    <asp:Label ID="lblExperience" runat="server" Text='<%# Eval("Experience") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtExperience" runat="server" Text='<%# Eval("Experience") %>' Width="44px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemStyle Width="44px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Available" ItemStyle-Width="70px">
                                <ItemTemplate>
                                    <asp:Label ID="lblAvailable" runat="server" Text='<%# Eval("AvailableDaysTimings") %>' DataFormatString="{0:dd/MM/yyyy}"></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtAvailable" runat="server" Text='<%# Eval("AvailableDaysTimings") %>' DataFormatString="{0:dd/MM/yyyy}" Width="70px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemStyle Width="70px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Status" ItemStyle-Width="50px">
                                <ItemTemplate>
                                    <asp:Label ID="lblStatus" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtStatus" runat="server" Text='<%# Eval("Status") %>' Width="50px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemStyle Width="50px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Button" ItemStyle-Width="35px">
                                <ItemTemplate>
                                    <asp:Button ID="btn_Edit" runat="server" CommandName="Edit" Text="Edit" />
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:Button ID="btn_Update" runat="server" CommandName="Update" Text="Update" />
                                    <asp:Button ID="btn_Cancel" runat="server" CommandName="Cancel" Text="Cancel" />
                                </EditItemTemplate>
                                <ItemStyle Width="70px" />
                            </asp:TemplateField>
                        </Columns>
                        <PagerSettings Mode="NumericFirstLast" PageButtonCount="4" FirstPageText="First" LastPageText="Last" />
                        <HeaderStyle BackColor="#3366cc" ForeColor="White" Font-Bold="True" />
                        <RowStyle BackColor="#f9f9f9" />
                        <AlternatingRowStyle BackColor="#ffffff" />
                        <PagerStyle BackColor="#cccccc" ForeColor="Black" HorizontalAlign="Center" />
                    </asp:GridView>
                    <asp:Label ID="lblmsgNew" runat="server" Text=""></asp:Label>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </asp:Panel>
    <asp:Panel ID="pnlPatient" runat="server" Visible="false" BorderStyle="None" BorderWidth="1px" Padding="10">
        <div id="dvGrid1" style="padding: 10px; width: 800px">
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <asp:GridView ID="GvPatients" runat="server" AutoGenerateColumns="False" CssClass="modern-gridview"
                           BorderWidth="1px" CellPadding="2" GridLines="Both" Width="1150px" Height="420px"
                        AllowPaging="True" PageSize="7" DataKeyNames="" 
                        OnPageIndexChanging="GvPatients_PageIndexChanging"
                        OnRowEditing="GvPatients_RowEditing"
                         OnRowUpdating="GvPatients_RowUpdating"
                         OnRowCancelingEdit="GvPatients_RowCancelingEdit">
                        <Columns>
                            <asp:TemplateField HeaderText="PatientId" ItemStyle-Width="30px">
                                <ItemTemplate>
                                    <asp:Label ID="lblPatientId" runat="server" Text='<%# Eval("PatientId") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtPatientId" runat="server" Text='<%# Eval("PatientId") %>' Width="30px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemStyle Width="40px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Name" ItemStyle-Width="40px">
                                <ItemTemplate>
                                    <asp:Label ID="lblPatientName" runat="server" Text='<%# Eval("PatientName") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtPatientName" runat="server" Text='<%# Eval("PatientName") %>' Width="50px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemStyle Width="50px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Gender" ItemStyle-Width="30px">
                                <ItemTemplate>
                                    <asp:Label ID="lblGender" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtGender" runat="server" Text='<%# Eval("Gender") %>' Width="30px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemStyle Width="40px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Age" ItemStyle-Width="30px">
                                <ItemTemplate>
                                    <asp:Label ID="lblAge" runat="server" Text='<%# Eval("Age") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtAge" runat="server" Text='<%# Eval("Age") %>' Width="30px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemStyle Width="40px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Number" ItemStyle-Width="50px">
                                <ItemTemplate>
                                    <asp:Label ID="lblContactNumber" runat="server" Text='<%# Eval("ContactNumber") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtContactNumber" runat="server" Text='<%# Eval("ContactNumber") %>' Width="55px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemStyle Width="45px" />
                            </asp:TemplateField>
                           
                            <asp:TemplateField HeaderText="DoctorId" ItemStyle-Width="30px">
                                <ItemTemplate>
                                    <asp:Label ID="lblDoctorId" runat="server" Text='<%# Eval("DoctorId") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtDoctorId" runat="server" Text='<%# Eval("DoctorId") %>' Width="40px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemStyle Width="40px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Doctor" ItemStyle-Width="55px">
                                <ItemTemplate>
                                    <asp:Label ID="lblDoctorName" runat="server" Text='<%# Eval("DoctorName") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtDoctorName" runat="server" Text='<%# Eval("DoctorName") %>' Width="55px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemStyle Width="55px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Department" ItemStyle-Width="60px">
                                <ItemTemplate>
                                    <asp:Label ID="lblDepartment" runat="server" Text='<%# Eval("Department") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtDepartment" runat="server" Text='<%# Eval("Department") %>' Width="60px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemStyle Width="60px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Problem" ItemStyle-Width="55px">
                                <ItemTemplate>
                                    <asp:Label ID="lblProblem" runat="server" Text='<%# Eval("Problem") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtProblem" runat="server" Text='<%# Eval("Problem") %>' Width="55px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemStyle Width="55px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Visit" ItemStyle-Width="40px">
                                <ItemTemplate>
                                    <asp:Label ID="lblVisitStatus" runat="server" Text='<%# Eval("VisitStatus") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtVisitStatus" runat="server" Text='<%# Eval("VisitStatus") %>' Width="40px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemStyle Width="50px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Checkup" ItemStyle-Width="30px">
                                <ItemTemplate>
                                    <asp:Label ID="lblCheckupCompleted" runat="server" Text='<%# Eval("CheckupCompleted") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtCheckupCompleted" runat="server" Text='<%# Eval("CheckupCompleted") %>' Width="40px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemStyle Width="50px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Test" ItemStyle-Width="30px">
                                <ItemTemplate>
                                    <asp:Label ID="lblDaignosisTest" runat="server" Text='<%# Eval("DaignosisTest") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtDaignosisTest" runat="server" Text='<%# Eval("DaignosisTest") %>' Width="40px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemStyle Width="40px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Button" ItemStyle-Width="35px">
                                <ItemTemplate>
                                    <asp:Button ID="btn_Edit" runat="server" CommandName="Edit" Text="Edit" />
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:Button ID="btn_Update" runat="server" CommandName="Update" Text="Update" />
                                    <asp:Button ID="btn_Cancel" runat="server" CommandName="Cancel" Text="Cancel" />
                                </EditItemTemplate>
                                <ItemStyle Width="100px" />
                            </asp:TemplateField>
                        </Columns>
                     <PagerSettings Mode="NumericFirstLast" PageButtonCount="4" FirstPageText="First" LastPageText="Last" />
                     <HeaderStyle BackColor="#3366cc" ForeColor="White" Font-Bold="True" />
                     <RowStyle BackColor="#f9f9f9" />
                     <AlternatingRowStyle BackColor="#ffffff" />
                     <PagerStyle BackColor="#cccccc" ForeColor="Black" HorizontalAlign="Center" />
                    </asp:GridView>
                    <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </asp:Panel>
</asp:Content>
