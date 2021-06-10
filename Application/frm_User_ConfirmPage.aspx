<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frm_User_ConfirmPage.aspx.cs"
    Inherits="frm_User_ConfirmPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8">
    <title>Resquest-Doc</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicons -->
    <link href="img/favicon.png" rel="icon">
    <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700"
        rel="stylesheet">

    <!-- Bootstrap CSS File -->
    <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Libraries CSS Files -->
    <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

    <!-- Main Stylesheet File -->
    <link href="css/style.css" rel="stylesheet">
    <link rel="stylesheet" id="styleLink" href="dist/purple/bootstrap.min.css">
</head>
<body>
    <form id="form1" runat="server">
        <!--==========================
  Header
  ============================
-->
        <div class="navbar navbar-expand-lg fixed-top navbar-dark bg-primary">
            <div class="container">
                <a href="#" class="navbar-brand">DigiDocs</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar"
                    aria-controls="navbar" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbar">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item dropdown">
                            <asp:Button ID="btn_Logout" runat="server" Text="Log Out" CssClass="btn btn-secondary"
                                OnClick="btn_Logout_Click" />
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- #header -->

        <!--==========================
      Request Section
    ============================-->
        <section class="issue" style="/*background-color: #ecf4fb; */ background-image: url('img/01.jpg');
            background-size: cover;">

            <table style="width: 100%;" border="0">
                <tr>
                    <td colspan="3">
                        <div style="width: 100%;" class="card-header">
                            <h2 align="left" style="font-size: 2em; font-weight: bold; padding-left: 2%">Dashboard
                            </h2>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="padding-top: 3%" colspan="3"></td>
                </tr>
                <tr>
                    <td style="vertical-align: top; width: 20%;" align="right">
                        <table style="width: 98%; font-size: 1.3em">
                            <tr class="list-group-item d-flex justify-content-between align-items-center">
                                <td style="width: 30%">
                                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Body_Structure/img/dashboard.png"
                                        Width="100%" /></td>
                                <td style="width: 70%;" align="left">
                                    <asp:LinkButton ID="lnk_aadhar" runat="server" Text="Dashboard" BackColor="White"
                                        Width="100%" /></td>
                            </tr>
                            <tr class="list-group-item d-flex justify-content-between align-items-center">
                                <td style="width: 30%">
                                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Body_Structure/img/IssueDoc.png"
                                        Width="100%" /></td>
                                <td style="width: 70%;" align="left">
                                    <asp:LinkButton ID="LinkButton1" runat="server" Text="Issued Docs" BackColor="White"
                                        Width="100%" /></td>
                            </tr>
                            <tr class="list-group-item d-flex justify-content-between align-items-center">
                                <td style="width: 30%">
                                    <asp:Image ID="Image3" runat="server" ImageUrl="~/Body_Structure/img/ReqDoc.png"
                                        Width="100%" /></td>
                                <td style="width: 70%;" align="left">
                                    <asp:LinkButton ID="LinkButton2" runat="server" Text="Request Docs" BackColor="White"
                                        Width="100%" /></td>
                            </tr>
                            <tr class="list-group-item d-flex justify-content-between align-items-center">
                                <td style="width: 30%">
                                    <asp:Image ID="Image4" runat="server" ImageUrl="~/Body_Structure/img/status.png"
                                        Width="100%" /></td>
                                <td style="width: 70%;" align="left">
                                    <asp:LinkButton ID="LinkButton3" runat="server" Text="Docs Status" BackColor="White"
                                        Width="100%" /></td>
                            </tr>

                            <tr class="list-group-item d-flex justify-content-between align-items-center">
                                <td style="width: 30%">
                                    <asp:Image ID="Image5" runat="server" ImageUrl="~/Body_Structure/img/profile_data.png"
                                        Width="100%" /></td>
                                <td style="width: 70%;" align="left">
                                    <asp:LinkButton ID="LinkButton4" runat="server" Text="My Profile" BackColor="White"
                                        Width="100%" /></td>
                            </tr>
                        </table>

                    </td>
                    <td style="width: 1%"></td>

                    <td style="width: 79%; vertical-align: top;">

                        <table style="width: 100%;" border="0">
                            <tr>
                                <td style="width: 60%;">
                                    <table border="0" style="width: 100%; font-family: Verdana; font-size: 1em; font-weight: bold;
                                        color: #000000;"
                                        cellpadding="8">
                                        <tr>
                                            <td style="width: 10%; color: #B00000;">&nbsp;</td>
                                            <td style="width: 30%; color: #B00000; padding-top: 0px; margin-top: 0px;">First Name
                                            </td>
                                            <td style="color: #4B4F53; padding-top: 0px;">:</td>
                                            <td style="padding-top: 0px">
                                                <asp:Label ID="lbl_fname" runat="server" Text="vishal"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 10%; color: #B00000;">&nbsp;</td>
                                            <td style="width: 20%; color: #B00000; padding-top: 0px; margin-top: 0px;">Father Name
                                            </td>
                                            <td style="color: #4B4F53; padding-top: 0px;">:</td>
                                            <td style="padding-top: 0px">
                                                <asp:Label ID="lbl_father" runat="server" Text="Hiteshbhai"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 10%; color: #B00000;">&nbsp;</td>
                                            <td style="width: 20%; color: #B00000; padding-top: 0px; margin-top: 0px;">Surname
                                            </td>
                                            <td style="color: #4B4F53; padding-top: 0px;">:</td>
                                            <td style="padding-top: 0px">
                                                <asp:Label ID="lbl_surname" runat="server" Text="Gohil"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 10%; color: #B00000;">&nbsp;</td>
                                            <td style="width: 20%; color: #B00000; padding-top: 0px; margin-top: 0px;">Gender
                                            </td>
                                            <td style="color: #4B4F53; padding-top: 0px;">:</td>
                                            <td style="padding-top: 0px">
                                                <asp:Label ID="lbl_gender" runat="server" Text="Male"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 10%; color: #B00000;">&nbsp;</td>
                                            <td style="width: 20%; color: #B00000; padding-top: 0px; margin-top: 0px;">Birthdate
                                            </td>
                                            <td style="color: #4B4F53; padding-top: 0px;">:</td>
                                            <td style="padding-top: 0px">
                                                <asp:Label ID="lbl_dob" runat="server" Text="08/04/2000"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 10%; color: #B00000;">&nbsp;</td>
                                            <td style="width: 20%; color: #B00000; padding-top: 0px; margin-top: 0px;">Address
                                            </td>
                                            <td style="color: #4B4F53; padding-top: 0px;">:</td>
                                            <td style="padding-top: 0px">
                                                <asp:Label ID="lbl_address" runat="server" Text="Krushnagar"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 10%; color: #B00000;">&nbsp;</td>
                                            <td style="width: 20%; color: #B00000; padding-top: 0px; margin-top: 0px;">Pincode
                                            </td>
                                            <td style="color: #4B4F53; padding-top: 0px;">:</td>
                                            <td style="padding-top: 0px">
                                                <asp:Label ID="lbl_pincode" runat="server" Text="361006"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 10%; color: #B00000;">&nbsp;</td>
                                            <td style="width: 20%; color: #B00000; padding-top: 0px; margin-top: 0px;">Mobile
                                            </td>
                                            <td style="color: #4B4F53; padding-top: 0px;">:</td>
                                            <td style="padding-top: 0px">
                                                <asp:Label ID="lbl_mobile" runat="server" Text="1231233123"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 10%; color: #B00000;">&nbsp;</td>
                                            <td style="width: 20%; color: #B00000; padding-top: 0px; margin-top: 0px;">Email
                                            </td>
                                            <td style="color: #4B4F53; padding-top: 0px;">:</td>
                                            <td style="padding-top: 0px">
                                                <asp:Label ID="lbl_email" runat="server" Text="asdf@gmail.com"></asp:Label></td>
                                        </tr>
                                        <tr id="tr_badge">
                                            <td style="width: 10%; color: #B00000;">&nbsp;</td>
                                            <td style="width: 20%; color: #B00000; padding-top: 0px;">
                                                <asp:Label ID="lbl_badge" runat="server" Text="Select Badges" Visible="false"></asp:Label>
                                            </td>
                                            <td style="color: #4B4F53; padding-top: 0px;">
                                                <asp:Label ID="lbl_colun" runat="server" Text=":" Visible="false"></asp:Label>
                                            </td>
                                            <td style="vertical-align: text-top">
                                                <asp:CheckBox ID="chk_mcv" runat="server" Text="MCV" Visible="false" />
                                                <asp:CheckBox ID="chk_lmv" runat="server" Text="LMV" Visible="false" />
                                                <asp:CheckBox ID="chk_hmv" runat="server" Text="HMV" Visible="false" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>

                                <td align="left" style="vertical-align: middle; width: 40%">
                                    <table style="width: 100%;" border="0">
                                        <tr>
                                            <td style="width: 80%" align="center">
                                                <asp:Image ID="img_user" runat="server" ImageUrl="~/img/team-1.jpg" Width="50%" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="padding: 15% 0 0 0;" colspan="2"></td>
                                        </tr>
                                        <tr>
                                            <td align="center">
                                                <table style="width: 100%">
                                                    <tr align="center">
                                                        <td>
                                                            <asp:Button ID="btn_confirm" runat="server" Text="I' Confirm" Width="98%" CssClass="btn btn-primary active"
                                                                OnClick="btn_confirm_Click" />
                                                        </td>
                                                        <td align="center">
                                                            <asp:Button ID="btn_deny" runat="server" Text="Deny" Width="98%" CssClass="btn btn-danger"
                                                                OnClick="btn_deny_Click" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>


                    </td>
                </tr>
            </table>


        </section>

        <!-- #Request Section -->


        <!--==========================
    Footer
  ============================-->
        <footer id="footer">
            <div class="footer-top">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-4 col-md-6 footer-info">
                            <h3>DigiDocs</h3>
                            <p>
                                This Secure Website may used to View Documents & Save Document in Account.
                                No need to Original Driving Licene, Adhar Card,Voter Card & Pan Card Any More.
                                All Documents are view in Soft Copy in DigiDocs WebSite.
                            </p>
                        </div>

                        <div class="col-lg-2 col-md-6 footer-links">
                            <h4>Useful Links</h4>
                            <ul>
                                <li><a href="#">Home</a></li>
                                <li><a href="#">About us</a></li>
                                <li><a href="#">Services</a></li>
                                <li><a href="#">Terms of service</a></li>
                                <li><a href="#">Privacy policy</a></li>
                            </ul>
                        </div>

                        <div class="col-lg-3 col-md-6 footer-contact">
                            <h4>Contact Us</h4>
                            <p>
                                Mahila College Campus
                            <br>
                                Mahila College Road<br>
                                Code : 361007
                            <br>
                                <strong>Phone:</strong> +1 5589 55488 55<br>
                                <strong>Email:</strong> hjd@gmail.com<br>
                            </p>

                            <div class="social-links">
                                <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
                                <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
                                <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
                                <%-- <a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>--%>
                                <%-- <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>--%>
                            </div>

                        </div>

                        <div class="col-lg-3 col-md-6 footer-newsletter">
                            <h4>Our Newsletter</h4>
                            <p>
                                DigiDocs is a secure cloud based platform for storage, sharing and verification
                                of documents & certificates.

                            </p>
                            <form action="" method="post">
                                <input type="email" name="email"><input type="submit"
                                    value="Subscribe">
                            </form>
                        </div>

                    </div>
                </div>
            </div>

            <div class="container">
                <div class="copyright">
                    &copy; Copyright <strong>DigiDocs</strong>. All Rights Reserved
                </div>
                <div class="credits">
                    Designed & Programming by <a href="*">Urmal & Vishal</a>
                </div>
            </div>
        </footer>
        <!-- #footer -->
    </form>
</body>
</html>
