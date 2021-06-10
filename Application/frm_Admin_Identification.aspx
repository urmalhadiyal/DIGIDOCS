<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frm_Admin_Identification.aspx.cs" Inherits="frm_Issue" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>

    <meta charset="utf-8">
    <title>Digidocs Registration Website</title>
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
                                        PostBackUrl="~/frm_home.aspx"></asp:LinkButton>
                                </li>
                                <li>
                                    <asp:LinkButton ID="mnu_dashboard" runat="server" Text="Dashboard" PostBackUrl="~/frm_Admin_Dashboard.aspx"></asp:LinkButton>
                                </li>
                                <li>
                                    <asp:LinkButton ID="mnu_userdetails" runat="server" Text="User Details"
                                        PostBackUrl="frm_Admin_UserDetail.aspx"></asp:LinkButton>
                                </li>
                                <li class="active drop-down ">
                                    <asp:LinkButton ID="LinkButton1" runat="server" Text="Identification" PostBackUrl="~/frm_Admin_Identification.aspx?tbl=tbl_AadharCard"></asp:LinkButton>
                                    <ul>
                                        <li>
                                            <asp:LinkButton ID="mnu1_aadharcard" runat="server" Text="Aadhar Card" PostBackUrl="~/frm_Admin_Identification.aspx?tbl=tbl_AadharCard"></asp:LinkButton></li>
                                        <li>
                                            <asp:LinkButton ID="mnu1_pancard" runat="server" Text="Pan Card" PostBackUrl="~/frm_Admin_Identification.aspx?tbl=tbl_PanCard"></asp:LinkButton></li>
                                        <li>
                                            <asp:LinkButton ID="mnu1_votercard" runat="server" Text="Voter Card" PostBackUrl="~/frm_Admin_Identification.aspx?tbl=tbl_VoterCard"></asp:LinkButton></li>
                                        <li>
                                            <asp:LinkButton ID="mnu1_dl" runat="server" Text="Driving License" PostBackUrl="~/frm_Admin_Identification.aspx?tbl=tbl_DrivingLicence"></asp:LinkButton></li>
                                    </ul>
                                </li>
                                <li class="signin">
                                    <div class="row">
                                        <div class="col-lg-8 mb-4">
                                            <div class="component-example">
                                                <asp:Button ID="btn_logout" OnClick="btn_logout_Click" class="btn btn-outline-primary" runat="server" Text="LogOut" />
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
        <section class="clearfix issue" style="/*background-color: #ecf4fb; */ background-image: url('img/01.jpg'); background-size: cover;">
            <div style="margin: 5% 0% 2% 0%;">
                <div style="width: 90%; margin: 0% 0% 0% 5%;">
                    <h2 class="card-header" align="center" style="background-color: rgba(0, 0, 0, 0.51); color: #fff;">Issued Certificates</h2>
                </div>
                <br />
                <table style="width: 90%" align="center">
                    <tr>
                        <td colspan="3" align="right" style="vertical-align: top; margin-top: 0px">
                            <asp:TextBox ID="txt_Search" runat="server" placeholder="Search Candidate by Name OR ID"
                                Width="30%" Font-Size="1.2em" AutoPostBack="true" ></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="vertical-align: top; width: 20%;">
                            <p style="padding: 1% 2% 1% 2%; font-family: Verdana; font-size: 1.3em; font-weight: bold; color: #333333; background-color: #E8E8E8; border-bottom-style: solid; border-bottom-color: #FF1C1C; border-right-style: solid; border-right-color: #FF1C1C;">
                                Categories
                            </p>
                            <asp:LinkButton ID="lnk_aadhar" runat="server" Text="Aadhar Card" CssClass="list-group-item d-flex justify-content-between align-items-center"
                                Width="100%" PostBackUrl="~/frm_Admin_Identification.aspx?tbl=tbl_AadharCard" />
                            <asp:LinkButton ID="lnk_pan" runat="server" Text="Pan Card" CssClass="list-group-item d-flex justify-content-between align-items-center"
                                Width="100%" PostBackUrl="~/frm_Admin_Identification.aspx?tbl=tbl_PanCard"/>
                            <asp:LinkButton ID="lnk_voter" runat="server" Text="Voter Card" CssClass="list-group-item d-flex justify-content-between align-items-center"
                                Width="100%" PostBackUrl="~/frm_Admin_Identification.aspx?tbl=tbl_VoterCard"/>
                            <asp:LinkButton ID="lnk_dl" runat="server" Text="Driving Licence" CssClass="list-group-item d-flex justify-content-between align-items-center"
                                Width="100%" PostBackUrl="~/frm_Admin_Identification.aspx?tbl=tbl_DrivingLicence"/>
                        </td>
                        <td style="width: 1%"></td>
                        <td>
                            <div class="scrollbar">
                                <asp:GridView ID="Grdview" runat="server" AutoGenerateColumns="False"
                                    BackColor="#DDDDDD" BorderColor="Black" BorderStyle="None" BorderWidth="1px"
                                    CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="100%"
                                    Font-Size="1em">
                                    <Columns>
                                        <asp:TemplateField HeaderText="Sr. No.">

                                            <ItemTemplate>
                                                <%#Container.DataItemIndex+1 %>
                                            </ItemTemplate>
                                            <ControlStyle Width="100%" />
                                            <HeaderStyle Height="2%" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5%" />
                                        </asp:TemplateField>
                                        <asp:ImageField DataImageUrlField="UD_Image" HeaderText="Image">
                                            <ControlStyle Width="50%" />
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            <ItemStyle Width="10%" HorizontalAlign="Left"
                                                VerticalAlign="Middle" />
                                        </asp:ImageField>
                                        <asp:BoundField DataField="UD_Name" HeaderText="Name">
                                            <ControlStyle Width="100%" />
                                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="30%" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="App_ID" HeaderText="Application Number">
                                            <ControlStyle Width="100%" />
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            <ItemStyle Width="25%" />
                                        </asp:BoundField>
                                        <asp:TemplateField HeaderText="Action">
                                            <ItemTemplate>
                                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("App_ID", "~/frm_Admin_view_data.aspx?Id={0}&tbl="+Request.QueryString["tbl"].ToString()+"") %>' Text="View"></asp:HyperLink>
                                            </ItemTemplate>
                                            <ControlStyle Font-Bold="True" Font-Names="Verdana" Font-Size="1em" ForeColor="Blue" Width="100%" />
                                            <ItemStyle ForeColor="Blue" />
                                        </asp:TemplateField>
                                    </Columns>
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <HeaderStyle BackColor="Purple" Font-Bold="True" ForeColor="White" BorderStyle="None" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                    <SortedDescendingHeaderStyle BackColor="#242121" />
                                </asp:GridView>

                            </div>

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
