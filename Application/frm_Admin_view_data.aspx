<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frm_Admin_view_data.aspx.cs"
    Inherits="frm_Admin_view_data" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

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
    <link rel="stylesheet" id="Link1" href="dist/purple/bootstrap.min.css">


    <link href="css/Scrollbar.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">

       <!--==========================
  Header
  ============================
-->
        <header id="header" class="fixed-top">
            <div class="container">

                <div class="logo float-left">
                    <!-- Uncomment below if you prefer to use an image logo -->
                    <!-- <h1 class="text-light"><a href="#header"><span>NewBiz</span></a></h1>
-->
                    <a href="#intro" class="scrollto">
                        <img src="img/logo2.png" alt="" class="img-fluid"></a>
                </div>

                <nav class="main-nav float-right d-none d-lg-block">
                    <ul>
                        <li>
                            <ul>
                                <li>
                                    <asp:LinkButton ID="mnu_home" runat="server" Text="Home" 
                                        PostBackUrl="frm_home.aspx"></asp:LinkButton>
                                </li>
                                <li>
                                    <asp:LinkButton ID="mnu_dashboard" runat="server" Text="Dashboard"></asp:LinkButton>
                                </li>
                                <li>
                                    <asp:LinkButton ID="mnu_userdetails" runat="server" Text="User Details" 
                                        PostBackUrl="frm_Admin_UserDetail.aspx"></asp:LinkButton>
                                </li>
                                <li class="active drop-down "><asp:LinkButton ID="LinkButton1" runat="server" Text="Identification"></asp:LinkButton>
                                    <ul>
                                        <li><asp:LinkButton ID="mnu1_aadharcard" runat="server" Text="Aadhar Card"></asp:LinkButton></li>
                                        <li ><asp:LinkButton ID="mnu1_votercard" runat="server" Text="Voter Card"></asp:LinkButton></li>
                                        <li><asp:LinkButton ID="mnu1_pancard" runat="server" Text="Pan Card"></asp:LinkButton></li>
                                        <li><asp:LinkButton ID="mnu1_dl" runat="server" Text="Driving License"></asp:LinkButton></li>
                                    </ul>
                                </li>
                                <li class="signin">
                                    <div class="row">
                                        <div class="col-lg-8 mb-4">
                                            <div class="component-example">
                                                <asp:Button ID="btn_logout" class="btn btn-outline-primary" runat="server" Text="LogOut" OnClick="btn_logout_Click"/>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                    </li>
                    </ul>

                </nav>
                <!-- .main-nav -->

            </div>
        </header>
        <!-- #header -->

        <!-- issued certificates -->
        <section class="clearfix issue" style="/*background-color: #ecf4fb; */ background-image: url('img/01.jpg');
            background-size: cover;">
            <div class="container">
                <div style="margin: 5% 0% -1% 0%;">

                    <div>
                        <h2 class="card-header" style="background-color: rgba(0, 0, 0, 0.51); color: #fff;">
                            Candidate Detail</h2>
                    </div>

                    <div style="white-space: pre-line;">
                        <div class="component-example">
                            <div class="card bg-light mb-3">
                                <div class="card-body">

                                    <table border="0" style="width: 90%">
                                        <tr valign="Top" align="center">
                                            <td style="width: 40%;" rowspan="2">
                                                <table border="0" style="width: 45%;">
                                                    <tr>
                                                        <td style="width: 10%">
                                                            <asp:Image ID="img_User" runat="server" Width="100%" BorderStyle="Solid"
                                                                BorderWidth="2px" AlternateText="user image" ImageAlign="Top"
                                                                ImageUrl="~/img/team-1.jpg" BorderColor="#0033CC" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 20%" align="center">Application ID:
                                <asp:Label ID="lbl_AppNum" runat="server" Text="010000010002102347" Font-Bold="True"
                                    Font-Names="Verdana"
                                    Font-Size="1.2em"></asp:Label></td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <%--  <td style="border-left: 3px solid green; "></td>--%>
                                            <td style="width: 60%;">
                                                <table border="0"
                                                    style="width: 100%; border-left: 3px solid green; font-family: Verdana; font-size: 1em;
                                                    font-weight: bold; color: #000000;"
                                                    cellpadding="8">

                                                    <tr>
                                                        <td style="width: 10%; color: #B00000;">&nbsp;</td>
                                                        <td style="width: 30%; color: #B00000; padding-top: 0px; margin-top: 0px;">First Name </td>
                                                        <td style="color: #4B4F53; padding-top: 0px;">:</td>
                                                        <td style="padding-top: 0px"><asp:Label ID="lbl_name" runat="server" Text="vishal"></asp:Label></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 10%; color: #B00000;">&nbsp;</td>
                                                        <td style="width: 30%; color: #B00000; padding-top: 0px; margin-top: 0px;">Father Name</td>
                                                        <td style="color: #4B4F53; padding-top: 0px;">:</td>
                                                        <td style="padding-top: 0px"><asp:Label ID="lbl_father" runat="server" Text="Hiteshbhai"></asp:Label></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 10%; color: #B00000;">&nbsp;</td>
                                                        <td style="width: 30%; color: #B00000; padding-top: 0px; margin-top: 0px;">Surname</td>
                                                        <td style="color: #4B4F53; padding-top: 0px;">:</td>
                                                        <td style="padding-top: 0px"><asp:Label ID="lbl_surname" runat="server" Text="Gohil"></asp:Label></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 10%; color: #B00000;">&nbsp;</td>
                                                        <td style="width: 30%; color: #B00000; padding-top: 0px; margin-top: 0px;">Gender</td>
                                                        <td style="color: #4B4F53; padding-top: 0px;">:</td>
                                                        <td style="padding-top: 0px"><asp:Label ID="lbl_gender" runat="server" Text="Male"></asp:Label></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 10%; color: #B00000;">&nbsp;</td>
                                                        <td style="width: 30%; color: #B00000; padding-top: 0px; margin-top: 0px;">Birthdate</td>
                                                        <td style="color: #4B4F53; padding-top: 0px;">:</td>
                                                        <td style="padding-top: 0px"><asp:Label ID="lbl_dob" runat="server" Text="08/04/2000"></asp:Label></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 10%; color: #B00000;">&nbsp;</td>
                                                        <td style="width: 30%; color: #B00000; padding-top: 0px; margin-top: 0px;">Address</td>
                                                        <td style="color: #4B4F53; padding-top: 0px;">:</td>
                                                        <td style="padding-top: 0px"><asp:Label ID="lbl_address" runat="server" Text="Krushnagar"></asp:Label></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 10%; color: #B00000;">&nbsp;</td>
                                                        <td style="width: 30%; color: #B00000; padding-top: 0px; margin-top: 0px;">Pincode</td>
                                                        <td style="color: #4B4F53; padding-top: 0px;">:</td>
                                                        <td style="padding-top: 0px"><asp:Label ID="lbl_pincode" runat="server" Text="361006"></asp:Label></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 10%; color: #B00000;">&nbsp;</td>
                                                        <td style="width: 30%; color: #B00000; padding-top: 0px; margin-top: 0px;">Mobile</td>
                                                        <td style="color: #4B4F53; padding-top: 0px;">:</td>
                                                        <td style="padding-top: 0px"><asp:Label ID="lbl_mobile" runat="server" Text="1231233123"></asp:Label></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 10%; color: #B00000;">&nbsp;</td>
                                                        <td style="width: 30%; color: #B00000; padding-top: 0px; margin-top: 0px;">Email</td>
                                                        <td style="color: #4B4F53; padding-top: 0px;">:</td>
                                                        <td style="padding-top: 0px"><asp:Label ID="lbl_email" runat="server" Text="asdf@gmail.com"></asp:Label></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 10%; color: #B00000;">&nbsp;</td>
                                                        <td style="width: 30%; color: #B00000; padding-top: 0px;"><asp:Label ID="lbl_badge" runat="server" Text="Badges" Visible="false"></asp:Label></td>
                                                        <td style="color: #4B4F53; padding-top: 0px;"><asp:Label ID="lbl_col" runat="server" Text=":" Visible="false"></asp:Label></td>
                                                        <td style="vertical-align:text-top"><asp:Label ID="lbl_badge_tag" runat="server" Text="--N/A--" Visible="false"></asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <table border="0" style="width: 30%;" align="center">
                    <tr>
                        <td style="width: 45%" align="right">
                            <asp:Button ID="btn_Verfied" runat="server" Text=" Verfied "
                                CssClass="btn btn-outline-warning" Width="100%" Font-Bold="True"
                                Font-Size="1.3em" OnClick="btn_Verfied_Click" />
                        </td>
                        <td></td>
                        <td align="left" style="width: 45%">
                            <asp:Button ID="btn_Unverfied" runat="server" Text=" Unverfied "
                                CssClass="btn btn-outline-danger" Width="100%" Font-Bold="True"
                                Font-Size="1.3em" />
                        </td>
                    </tr>
                </table>
            </div>
        </section>
        <!-- End of issue-->


        <!-- strat footer-->
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
                                DigiDocs is a secure cloud based platform for storage, sharing and verification of documents & certificates.

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


        <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
        <!-- Uncomment below i you want to use a preloader -->
        <!-- <div id="preloader"></div> -->

        <!-- JavaScript Libraries -->
        <script src="lib/jquery/jquery.min.js"></script>
        <script src="lib/jquery/jquery-migrate.min.js"></script>
        <script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/mobile-nav/mobile-nav.js"></script>
        <script src="lib/wow/wow.min.js"></script>
        <script src="lib/waypoints/waypoints.min.js"></script>
        <script src="lib/counterup/counterup.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="lib/isotope/isotope.pkgd.min.js"></script>
        <script src="lib/lightbox/js/lightbox.min.js"></script>
        <!-- Contact Form JavaScript File -->
        <script src="contactform/contactform.js"></script>

        <!-- Template Main Javascript File -->
        <script src="js/main.js"></script>
    </form>
</body>
</html>
