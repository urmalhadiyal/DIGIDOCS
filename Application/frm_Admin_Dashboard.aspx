<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frm_Admin_Dashboard.aspx.cs"
    Inherits="frm_Admin_Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <title>Digidocs Registration Website</title>
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
                            <asp:Button ID="btn_logout" runat="server" Text="Log Out" OnClick="btn_logout_Click"
                                CssClass="btn btn-secondary" />
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
                            <tr class="list-group-item d-flex justify-content-between align-items-center" id="tr_set"
                                runat="server">
                                <td style="width: 30%">
                                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Body_Structure/img/dashboard.png"
                                        Width="100%" /></td>
                                <td style="width: 70%;" align="left">
                                    <asp:LinkButton ID="lnk_dashboard" runat="server" Text="Dashboard" BackColor="White"
                                        Width="100%" PostBackUrl="#" /></td>
                            </tr>

                            <tr class="list-group-item d-flex justify-content-between align-items-center">
                                <td style="width: 30%">
                                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Body_Structure/img/IssueDoc.png"
                                        Width="100%" /></td>
                                <td style="width: 70%;" align="left">
                                    <asp:LinkButton ID="lnk_userDetail" runat="server" Text="User Details" BackColor="White"
                                        Width="100%" PostBackUrl="~/frm_Admin_UserDetail.aspx" /></td>
                            </tr>

                            <tr class="list-group-item d-flex justify-content-between align-items-center">
                                <td style="width: 30%">
                                    <asp:Image ID="Image3" runat="server" ImageUrl="~/Body_Structure/img/AadharCard.png"
                                        Width="100%" /></td>
                                <td style="width: 70%;" align="left">
                                    <asp:LinkButton ID="lnk_aadhar" runat="server" Text="Aadhar Identification" BackColor="White"
                                        Width="100%" PostBackUrl="~/frm_Admin_Identification.aspx?tbl=tbl_AadharCard" />
                                </td>
                            </tr>

                            <tr class="list-group-item d-flex justify-content-between align-items-center">
                                <td style="width: 30%">
                                    <asp:Image ID="Image4" runat="server" ImageUrl="~/Body_Structure/img/Votercard.png"
                                        Width="100%" /></td>
                                <td style="width: 70%;" align="left">
                                    <asp:LinkButton ID="lnk_voter" runat="server" Text="Voter Identification" BackColor="White"
                                        Width="100%" PostBackUrl="~/frm_Admin_Identification.aspx?tbl=tbl_VoterCard" />
                                </td>
                            </tr>

                            <tr class="list-group-item d-flex justify-content-between align-items-center">
                                <td style="width: 30%">
                                    <asp:Image ID="Image5" runat="server" ImageUrl="~/Body_Structure/img/Pancard.png"
                                        Width="100%" /></td>
                                <td style="width: 70%;" align="left">
                                    <asp:LinkButton ID="lnk_pan" runat="server" Text="Pan Identification" BackColor="White"
                                        Width="100%" PostBackUrl="~/frm_Admin_Identification.aspx?tbl=tbl_PanCard" />
                                </td>
                            </tr>

                            <tr class="list-group-item d-flex justify-content-between align-items-center">
                                <td style="width: 30%">
                                    <asp:Image ID="Image6" runat="server" ImageUrl="~/Body_Structure/img/RTO.jpg"
                                        Width="100%" /></td>
                                <td style="width: 70%;" align="left">
                                    <asp:LinkButton ID="lnk_dl" runat="server" Text="DL Identification" BackColor="White"
                                        Width="100%" PostBackUrl="~/frm_Admin_Identification.aspx?tbl=tbl_DrivingLicence" />
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td style="width: 1%"></td>

                    <td style="width: 79%; vertical-align: top;">
                        <table style="width: 100%" border="0">
                            <tr>
                                <td align="center" colspan="6">
                                    <div class="card text-white bg-secondary mb-3 ">
                                        <asp:Image ID="Image7" runat="server" ImageUrl="~/img/message_banner.jpg" Width="100%" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" style="padding: 1% 1% 0% 1%; width: 20%">
                                    <div class="card text-white bg-secondary mb-3" style="font-size: 1.5em;">
                                        <asp:Label ID="lbl_users" runat="server" Text="0" ForeColor="#006600" Font-Size="3em"></asp:Label>
                                        Users
                                        
                                    </div>
                                </td>
                                <td align="center" style="padding: 1% 1% 0% 1%; width: 20%">
                                    <div class="card text-white bg-secondary mb-3" style="font-size: 1.5em;">
                                        <asp:Label ID="lbl_aadharcard" runat="server" Text="0" ForeColor="#006600" Font-Size="3em"></asp:Label>
                                        Aadhar Card
                                        
                                    </div>
                                </td>
                                <td align="center" style="padding: 1% 1% 0% 1%; width: 20%">
                                    <div class="card text-white bg-secondary mb-3" style="font-size: 1.5em;">
                                        <asp:Label ID="lbl_pancard" runat="server" Text="0" Font-Size="3em" ForeColor="#006600"></asp:Label>
                                        Pan Card
                                        
                                    </div>
                                </td>
                                <td align="center" style="padding: 1% 1% 0% 1%; width: 20%">
                                    <div class="card text-white bg-secondary mb-3" style="font-size: 1.5em;">
                                        <asp:Label ID="lbl_votercard" runat="server" Text="0" ForeColor="#006600" Font-Size="3em"></asp:Label>
                                        Voter Card
                                        
                                    </div>
                                </td>
                                <td align="center" style="padding: 1% 1% 0% 1%; width: 20%">
                                    <div class="card text-white bg-secondary mb-3" style="font-size: 1.5em;">
                                        <asp:Label ID="lbl_DL" runat="server" Text="0" Font-Size="3em" ForeColor="#006600"></asp:Label>
                                        Driving Licence
                                        
                                    </div>
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


