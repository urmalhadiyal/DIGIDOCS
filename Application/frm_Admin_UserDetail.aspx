<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frm_Admin_UserDetail.aspx.cs"
    Inherits="frm_Admin_UserDetail" %>

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
    <a href="frm_Admin_UserDetail.aspx">frm_Admin_UserDetail.aspx</a>

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
                                <li class="active">
                                    <asp:LinkButton ID="mnu_userdetails" runat="server" Text="User Details"
                                        PostBackUrl="frm_Admin_UserDetail.aspx"></asp:LinkButton>
                                </li>
                                <li class="drop-down ">
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

        <!-- start section-->
        <section class="clearfix issue" style="background-image: url('img/01.jpg'); background-size: cover;">

            <div style="margin: 5% 2% 0% 2%">
                <table class="card-header"
                    style="border-color: red; background-color: rgba(0, 0, 0, 0.57); color: #fff;
                    width: 100%; border-top-style: 0; border-right-style: 0; border-bottom-style: 1em;
                    border-left-style: 0; border-bottom-width: medium;">
                    <tr>
                        <td style="padding: 1% 0% 0% 5%; width: 55%" valign="center">
                            <h1>User Details </h1>
                        </td>
                        <td align="right" style="padding-right: 0.5em; width: 40%">
                            <asp:TextBox ID="txt_search" runat="server" CssClass="form-control" Width="50%" 
                                placeholder="Search username" BackColor="White" OnTextChanged="txt_search_TextChanged" AutoPostBack="true" ></asp:TextBox>
                           
                        </td>
                        <td style="width: 5%; padding-left: 0px;" align="left">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/img/search.png" Width="50%" />
                        </td>
                    </tr>
                </table>
            </div>
            <div align="center">
                <table border="0" style="width: 95%">
                    <tr>
                        <td style="padding-bottom: 1%;"></td>
                    </tr>
                    <tr>
                        <td style="width: 70%; vertical-align: top;">
                            <table border="0" style="width: 98%;">
                                <tr>
                                    <td style="width: 100%">
                                        <div class="scrollbar" style="max-height: 400px;">
                                            <asp:GridView ID="dtgrd_user" runat="server" AutoGenerateColumns="False"
                                                BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px"
                                                CellPadding="4" Width="100%" AutoGenerateSelectButton="True" OnSelectedIndexChanged="dtgrd_user_SelectedIndexChanged"  >
                                                <Columns>

                                                    <asp:TemplateField HeaderText="Sr. No.">
                                                        <ItemTemplate>
                                                            <%#Container.DataItemIndex+1 %>
                                                        </ItemTemplate>
                                                        <ItemStyle Width="3%" />
                                                    </asp:TemplateField>

                                                    <asp:ImageField AlternateText="UserImg" HeaderText="User Image"
                                                        DataImageUrlField="UD_Image">
                                                        <ControlStyle Width="100%" />
                                                        <ItemStyle Width="13%" />
                                                    </asp:ImageField>
                                                    <asp:BoundField HeaderText="Username" DataField="Lgn_Username">
                                                        <ItemStyle Width="15%" />
                                                    </asp:BoundField>
                                                    <asp:BoundField HeaderText="First Name" DataField="UD_Name">
                                                        <ItemStyle Width="12%" />
                                                    </asp:BoundField>
                                                    <asp:BoundField HeaderText="Last Name" DataField="UD_SName">
                                                        <ItemStyle Width="10%" />
                                                    </asp:BoundField>
                                                    <asp:BoundField HeaderText="Gender" DataField="Lgn_Gender">
                                                        <ItemStyle Width="12%" />
                                                    </asp:BoundField>
                                                    <asp:BoundField HeaderText="Email" DataField="Lgn_Email">
                                                        <ItemStyle Width="12%" />
                                                    </asp:BoundField>
                                                    <asp:BoundField HeaderText="User Type" DataField="Lgn_Type">
                                                        <ItemStyle Width="12%" />
                                                    </asp:BoundField>
                                                    
                                                </Columns>
                                                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                                                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                                                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                                                <RowStyle BackColor="White" ForeColor="#003399" />
                                                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                                                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                                                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                                                <SortedDescendingHeaderStyle BackColor="#002876" />
                                            </asp:GridView>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>

                        <td class="card-header"
                            style="border-style: solid; border-width: 0px 2px 2px 0px; border-color: black;
                            width: 30%; vertical-align: top; background-color: rgba(0, 0, 0, 0.34); color: #fff;
                            font-family: Verdana; font-size: 1.2em;">
                            <table id="tbl_vdata" runat="server" visible="false" border="0" style="width: 100%; font-family: verdana; font-size: 1em;">
                                <tr>
                                    <td rowspan="2" style="width: 35%">
                                        <asp:Image ID="img_user" runat="server" Width="100%" BorderStyle="Solid" BorderWidth="1px"
                                            BorderColor="yellow" ImageUrl="~/img/team-1.jpg" />
                                    </td>
                                    <td style="width: 5%"></td>
                                    <td>
                                        <asp:Label ID="lbl_fname" runat="server" Text="Name"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>
                                        <asp:Label ID="lbl_lname" runat="server" Text="SurName"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center"><asp:Label ID="lbl_username" runat="server" Text="Username" ForeColor="Yellow"></asp:Label></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>Gender</td>
                                    <td>:</td>
                                    <td>
                                        <asp:Label ID="lbl_Gender" runat="server" Text="Male"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>DOB</td>
                                    <td></td>
                                    <td>
                                        <asp:Label ID="lbl_DOB" runat="server" Text="--N/A--"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Address</td>
                                    <td></td>
                                    <td>
                                        <asp:Label ID="lbl_address" runat="server" Text="--N/A--"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Email</td>
                                    <td></td>
                                    <td>
                                        <asp:Label ID="lbl_email" runat="server" Text="xyz@gmail.com"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Mobile</td>
                                    <td></td>
                                    <td>
                                        <asp:Label ID="lbl_mobile" runat="server" Text="--N/A--"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>
        </section>
        <!-- Exit section-->

        <!-- strat footer-->
        <footer id="footer">
            <div class="container">
                <div class="copyright" style="color: white; margin-right: 2%;">

                    <a href="" style="color: white; margin-right: 2%">Home</a>
                    <a href="" style="color: white; margin-right: 2%;">Dashboard</a>
                    <a href="" style="color: white; margin-right: 2%">User Details</a>
                    <a href="" style="color: white; margin-right: 2%">Aadhar Identification</a>
                    <a href="" style="color: white; margin-right: 2%">Voter Identification</a>
                    <a href="" style="color: white; margin-right: 2%">Pan Identification</a>
                    <a href="" style="color: white; margin-right: 2%">DL Identification</a>

                </div>

                <div class="copyright">
                    &copy; Copyright <strong>DigiDocs</strong>. All Rights Reserved
                </div>
                <div class="credits">
                    Designed & Programming by <a href="*">Urmal & Vishal</a>
                </div>
            </div>
        </footer>


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
