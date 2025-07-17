<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Receptionist.aspx.cs" Inherits="Hospital_Management_System.Receptionist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1 {
            width: 900px;
        }

        .auto-style3 {
            width: 900px;
            height: 430px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:RadioButtonList ID="rblRole" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="rblRole_SelectedIndexChanged">
        <asp:ListItem Text="Doctors Availability" Value="Doctors"></asp:ListItem>
        <asp:ListItem Text="Patient Visit" Value="Patients"></asp:ListItem>
    </asp:RadioButtonList>

    <asp:Panel ID="pnlDoctor" runat="server" Visible="false" BorderStyle="None" BorderWidth="1px" Padding="10">
        <div id="dvGrid" style="padding: 10px; width: 700px">
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <asp:GridView ID="GvDoctors" runat="server" AutoGenerateColumns="False" CssClass="modern-gridview"
                        BorderWidth="1px" CellPadding="2" GridLines="Both" Width="1178px" Height="430px"
                        AllowPaging="True" PageSize="6" OnPageIndexChanging="GvDoctors_PageIndexChanging">
                        <Columns>
                            <asp:TemplateField HeaderText="DoctorId" ItemStyle-Width="100px">
                                <ItemTemplate>
                                    <asp:Label ID="lblDoctorId" runat="server" Text='<%# Eval("DoctorId") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtDoctorId" runat="server" Text='<%# Eval("DoctorId") %>' Width="100px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemStyle Width="100px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="DoctorName" ItemStyle-Width="100px">
                                <ItemTemplate>
                                    <asp:Label ID="lblDoctorName" runat="server" Text='<%# Eval("DoctorName") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtDoctorName" runat="server" Text='<%# Eval("DoctorName") %>' Width="100px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemStyle Width="100px" />
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
                            <asp:TemplateField HeaderText="ContactNumber" ItemStyle-Width="100px">
                                <ItemTemplate>
                                    <asp:Label ID="lblContactNumber" runat="server" Text='<%# Eval("ContactNumber") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtContactNumber" runat="server" Text='<%# Eval("ContactNumber") %>' Width="100px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemStyle Width="100px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="EmailId" ItemStyle-Width="100px">
                                <ItemTemplate>
                                    <asp:Label ID="lblEmailId" runat="server" Text='<%# Eval("EmailId") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtEmailId" runat="server" Text='<%# Eval("EmailId") %>' Width="100px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemStyle Width="100px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Qualification" ItemStyle-Width="100px">
                                <ItemTemplate>
                                    <asp:Label ID="lblQualification" runat="server" Text='<%# Eval("Qualification") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtQualification" runat="server" Text='<%# Eval("Qualification") %>' Width="100px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemStyle Width="100px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Gender" ItemStyle-Width="100px">
                                <ItemTemplate>
                                    <asp:Label ID="lblGender" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtGender" runat="server" Text='<%# Eval("Gender") %>' Width="100px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemStyle Width="100px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Experience" ItemStyle-Width="100px">
                                <ItemTemplate>
                                    <asp:Label ID="lblExperience" runat="server" Text='<%# Eval("Experience") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtExperience" runat="server" Text='<%# Eval("Experience") %>' Width="100px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemStyle Width="100px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Available" ItemStyle-Width="100px">
                                <ItemTemplate>
                                    <asp:Label ID="lblAvailable" runat="server" Text='<%# Eval("AvailableDaysTimings") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtAvailable" runat="server" Text='<%# Eval("AvailableDaysTimings") %>' Width="100px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemStyle Width="100px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Status" ItemStyle-Width="100px">
                                <ItemTemplate>
                                    <asp:Label ID="lblStatus" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtStatus" runat="server" Text='<%# Eval("Status") %>' Width="100px"></asp:TextBox>
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
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </asp:Panel>

    <asp:Panel ID="pnlPatient" runat="server" Visible="false" BorderStyle="None" BorderWidth="1px" Padding="10">
        <div id="dvGrid1" style="padding: 10px; width: 700px">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:GridView ID="GvPatients" runat="server" AutoGenerateColumns="False" CssClass="modern-gridview"
                       Width="1000px" Height="430px"  AllowPaging="True" PageSize="6"
                       OnPageIndexChanging="GvPatients_PageIndexChanging" OnRowEditing="GvPatients_RowEditing" OnRowUpdating="GvPatients_RowUpdating" 
                        OnRowCancelingEdit="GvPatients_RowCancelingEdit"  >
                        <Columns>
                            <asp:TemplateField HeaderText="PatientId" ItemStyle-Width="50px">
                                <ItemTemplate>
                                    <asp:Label ID="lblPatientId" runat="server" Text='<%# Eval("PatientId") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtPatientId" runat="server" Text='<%# Eval("PatientId") %>' Width="50px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemStyle Width="50px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Name" ItemStyle-Width="100px">
                                <ItemTemplate>
                                    <asp:Label ID="lblPatientName" runat="server" Text='<%# Eval("PatientName") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtPatientName" runat="server" Text='<%# Eval("PatientName") %>' Width="100px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemStyle Width="100px" />
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
                            <asp:TemplateField HeaderText="Age" ItemStyle-Width="50px">
                                <ItemTemplate>
                                    <asp:Label ID="lblAge" runat="server" Text='<%# Eval("Age") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtAge" runat="server" Text='<%# Eval("Age") %>' Width="50px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemStyle Width="50px" />
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Number" ItemStyle-Width="100px">
                                <ItemTemplate>
                                    <asp:Label ID="lblContactNumber" runat="server" Text='<%# Eval("ContactNumber") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtContactNumber" runat="server" Text='<%# Eval("ContactNumber") %>' Width="100px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemStyle Width="100px" />
                            </asp:TemplateField>

                           
                            <asp:TemplateField HeaderText="DoctorId" ItemStyle-Width="70px">
                                <ItemTemplate>
                                    <asp:Label ID="lblDoctorId" runat="server" Text='<%# Eval("DoctorId") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtDoctorId" runat="server" Text='<%# Eval("DoctorId") %>' Width="70px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemStyle Width="70px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="DoctorName" ItemStyle-Width="100px">
                                <ItemTemplate>
                                    <asp:Label ID="lblDoctorName" runat="server" Text='<%# Eval("DoctorName") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtDoctorName" runat="server" Text='<%# Eval("DoctorName") %>' Width="100px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemStyle Width="100px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Department" ItemStyle-Width="100px">
                                <ItemTemplate>
                                    <asp:Label ID="lblDepartment" runat="server" Text='<%# Eval("Department") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtDepartment" runat="server" Text='<%# Eval("Department") %>' Width="100px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemStyle Width="100px" />
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Problem" ItemStyle-Width="100px">
                                <ItemTemplate>
                                    <asp:Label ID="lblProblem" runat="server" Text='<%# Eval("Problem") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtProblem" runat="server" Text='<%# Eval("Problem") %>' Width="100px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemStyle Width="100px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="VisitStatus" ItemStyle-Width="50px">
                                <ItemTemplate>
                                    <asp:Label ID="lblVisitStatus" runat="server" Text='<%# Eval("VisitStatus") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtVisitStatus" runat="server" Text='<%# Eval("VisitStatus") %>' Width="50px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemStyle Width="50px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Button" ItemStyle-Width="50px">
                                <ItemTemplate>
                                    <asp:Button ID="btn_Edit" runat="server" CommandName="Edit" Text="Edit" />
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:Button ID="btn_Update" runat="server" CommandName="Update" Text="Update" />
                                    <asp:Button ID="btn_Cancel" runat="server" CommandName="Cancel" Text="Cancel" />
                                </EditItemTemplate>
                                <ItemStyle Width="50px" />
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
