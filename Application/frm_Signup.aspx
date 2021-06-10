<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frm_Signup.aspx.cs" Inherits="frm_registretion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RegistrationForm_v1 by Colorlib</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- MATERIAL DESIGN ICONIC FONT -->
    <link rel="stylesheet" href="fonts/res_material-design-iconic-font/css/material-design-iconic-font.min.css">

    <!-- STYLE CSS -->
    <link rel="stylesheet" href="css/style_res.css">
</head>
<body>

    <div class="wrapper" style="background-image: url('images/bg-registration-form-1.jpg');">
        <div class="inner">
            <div class="image-holder">
                <img src="images/registration-form-1.png" alt="">
            </div>
            <form action="" id="Form1" runat="server">
                <h3>Registration Form</h3>
                <div class="form-group">
                    <!-- <input type="text" placeholder="First Name" class="form-control">
						<input type="text" placeholder="Last Name" class="form-control"> -->
                    <asp:TextBox ID="txt_firstname" class="form-control" runat="server" placeholder="First Name"></asp:TextBox>
                    <asp:TextBox ID="txt_Lastname" class="form-control" runat="server" placeholder="Last Name"></asp:TextBox>
                </div>
                <div class="form-wrapper">
                    <!--<input type="text" placeholder="Username" class="form-control">-->
                    <asp:TextBox ID="txt_username" class="form-control" runat="server" placeholder="Username"></asp:TextBox>
                    <i class="zmdi zmdi-account"></i>
                </div>
                <div class="form-wrapper">
                    <!--<input type="text" placeholder="Email Address" class="form-control">-->
                    <asp:TextBox ID="txt_Email" class="form-control" runat="server" placeholder="Email Address"></asp:TextBox>
                    <i class="zmdi zmdi-email"></i>
                </div>
                <div class="form-wrapper">
                    <!-- <select name="" id="" class="form-control">
							<option value="" disabled selected>Gender</option>
							<option value="male">Male</option>
							<option value="femal">Female</option>
							<option value="other">Other</option>
						</select> -->
                    <asp:DropDownList ID="db_gender" class="form-control" runat="server">
                        <asp:ListItem Selected="False">Gender</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                    <i class="zmdi zmdi-caret-down" style="font-size: 17px"></i>
                </div>
                <div class="form-wrapper">
                    <!--  <input type="password" placeholder="Password" class="form-control"> -->
                    <asp:TextBox ID="txt_password" class="form-control" runat="server" Text="Password" TextMode="Password" placeholder="Enter Password">Password</asp:TextBox>
                    <i class="zmdi zmdi-lock"></i>
                </div>
                <div class="form-wrapper">
                    <!-- <input type="password" placeholder="Confirm Password" class="form-control"> -->
                    <asp:TextBox ID="txt_confirmpass" class="form-control" runat="server" Text="Password" TextMode="Password" placeholder="Confirm Password">Password</asp:TextBox>
                    <i class="zmdi zmdi-lock"></i>
                </div>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password doesn't match" ForeColor="Red" ControlToValidate="txt_confirmpass" ControlToCompare="txt_password"></asp:CompareValidator>
                <!-- <button aria-hidden="False">Register
						<i class="zmdi zmdi-arrow-right"></i>
					</button>  -->
                <asp:Button ID="btn_res" class="zmdi zmdi-arrow-right" runat="server" Text=" Register " BackColor="#494D50" BorderStyle="Solid" ForeColor="White" Height="50px" Width="100%" Font-Size="1.5em" OnClick="btn_res_Click" />

                <table style="margin-top:10px;">
                    <tr>
                        <td align="left">
                            <h4><a href="frm_home.aspx" style ="text-decoration: none; color:blueviolet;">Go to Home</a></h4>
                        </td>
                        <td align="right">
                            <h4><a style="margin-left: 150px; text-decoration: none; color:blueviolet;" href="frm_login.aspx">Go to Login</a></h4>
                        </td>
                    </tr>
                </table>

            </form>
        </div>
    </div>


</body>
</html>
