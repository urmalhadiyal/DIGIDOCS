﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frm_login.aspx.cs" Inherits="frm_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>login page</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="images/icons/favicon.ico" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css/util.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <!--===============================================================================================-->
</head>
<body>

        <div class="limiter">
            <div class="container-login100">
                <div class="wrap-login100">
                    <div class="login100-pic js-tilt" data-tilt>
                        <!--<img src="images/img-01.png" alt="IMG">-->
                        <asp:Image ID="Img" runat="server" DescriptionUrl="IMG" ImageUrl="~/images/img-01.png" />
                    </div>
                    <form id="Form1" runat="server" class="login100-form validate-form">
                        <!--<span class="login100-form-title">Member Login
                        </span>-->
                        <asp:Label ID="Label1" class="login100-form-title" runat="server" Text="Member Login"></asp:Label>
                        <div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
                         <!--   <input class="input100" type="text" name="email" placeholder="Email">-->
                            <asp:TextBox ID="txt_username" class="input100" runat="server" placeholder="Enter username"></asp:TextBox>
                            
                            <!-- <span class="focus-input100"></span> -->
                            <h1 class="focus-input100"></h1>
                            <!--<span class="symbol-input100">
                                <i class="fa fa-envelope" aria-hidden="true"></i>
                            </span> -->
                            <h1 class="symbol-input100">
                                <i class="fa fa-envelope" aria-hidden="true"></i>
                            </h1>
                                
                        </div>

                        <div class="wrap-input100 validate-input" data-validate="Password is required">
                            <!--<input class="input100" type="password" name="pass" placeholder="Password">-->
                            <asp:TextBox ID="txt_password" class="input100" runat="server" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
                            <!-- <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-lock" aria-hidden="true"></i>
                            </span> -->
                            <h1 class="focus-input100"></h1>
                            <h1 class="symbol-input100">
                                <i class="fa fa-lock" aria-hidden="true"></i>
                            </h1>
                        </div>

                        <div class="container-login100-form-btn">
                            <asp:Button ID="btn_login" class="login100-form-btn" runat="server" Text="Login" OnClick="btn_login_Click">
                            </asp:Button>
                            
                        </div>
                         <div>
                             <br />
                             <asp:Label ID="lbl_msg" runat="server" Text="Invalid Username Or Password " ForeColor="Red" Visible="false"/>
                        </div>

                        <div class="text-center p-t-136">
                            <a class="txt2" href="frm_Signup.aspx">Create your Account
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
                            </a>
                        </div>
                    </form>
                </div>
            </div>
        </div>




        <!--===============================================================================================-->
        <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/select2/select2.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/tilt/tilt.jquery.min.js"></script>
        <script>
            $('.js-tilt').tilt({
                scale: 1.1
            })
        </script>
        <!--===============================================================================================-->
        <script src="js/main.js"></script>

    
</body>
</html>
