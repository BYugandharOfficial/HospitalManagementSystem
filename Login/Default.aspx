<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Hospital_Management_System.Default" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css"/>
      <script src="//code.jquery.com/jquery-1.10.2.js"></script>
      <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

       <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.no-icons.min.css" rel="stylesheet"/>
       <script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>

       <link href="runnable.css" rel="stylesheet" />
       <script src="//code.jquery.com/jquery-1.9.1.js"></script>
       <script src="//ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>

      <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css"/>
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

   <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.no-icons.min.css" rel="stylesheet"/>
   <script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>

   <link href="runnable.css" rel="stylesheet" />
   <script src="//code.jquery.com/jquery-1.9.1.js"></script>
   <script src="//ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>

    
              <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1 {
            width: 100px;
        }

        .auto-style1 {
            width: 724px;
            height: 302px;
            margin-left: 0px;
        }

        .auto-style2 {
            width: 385px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <Center>
        <div id="head">

            <asp:Image ID="Image1" runat="server" ImageUrl="img/Untitled.png" Height="91px" />

        </div>
        <div id="main">
            <div id="img">
                <img alt="" class="auto-style1" src="img/images1.png" />
            </div>
            <div id="login" class="auto-style2">
                <table class="tbl">
                    <tr>
                        <td class="tblhead" colspan="2">Login</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="lbl" runat="server" Font-Size="10px" ForeColor="lightblue"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">UserName:</td>
                        <td>
                            <asp:TextBox ID="txtuname" runat="server" CssClass="txt" Width="175px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                ControlToValidate="txtuname" ErrorMessage="!" ForeColor="Red"
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">Password:</td>
                        <td>
                
                            <asp:TextBox ID="txtupass" runat="server" CssClass="txt" TextMode="Password" Width="175px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                ControlToValidate="txtupass" ErrorMessage="!" ForeColor="Red"
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:RadioButtonList ID="rblRole" runat="server" RepeatDirection="Horizontal" Width="200px">
                                <asp:ListItem Text="Admin" Value="Admin"></asp:ListItem>
                                <asp:ListItem Text="Doctor" Value="Doctor"></asp:ListItem>
                                <asp:ListItem Text="Receptionist" Value="Receptionist"></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Login"
                                Width="80px" Font-Size="10pt" OnClick="Button1_Click" />
                        </td>
                    </tr>
                    <tr>
                       
                    </tr>
                    <tr> 
                        <td>&nbsp &nbsp;</td>
                           <td>
                            <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
                               </td>
                    </tr>
                </table>
            </div>

        </div>
            </Center>
    </form>
</body>
</html>
