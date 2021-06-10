<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frm_home.aspx.cs" Inherits="frm_home" %>

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
                        <li class="active">                           
                            <a href="#intro"><asp:Label ID="mnu_Home" runat="server" Text="Home"></asp:Label></a>          
                        </li>
                        <li>
                            <a href="#about"><asp:Label ID="Lable1" runat="server" Text="About Us"></asp:Label></a>          
                        </li>
                            
                        <li>
                            <a href="#services"><asp:Label ID="Lable2" runat="server" Text="Services"></asp:Label></a>                                      
                        </li>
                        <li>
                            <a href="#team"><asp:Label ID="Lable3" runat="server" Text="Team"></asp:Label></a>
                        </li>
                        <li>
                            <a href="#contact"><asp:Label ID="mnu_Contact" runat="server" Text="Contact Us"></asp:Label></a>
                        </li>
                        <li>
                            <ul>
                                
                                <li class="signin">
                                    <div class="row">
                                        <div class="col-lg-8 mb-4">
                                            <div class="component-example">
                                                <asp:Button ID="btn_signin" class="btn btn-outline-primary" runat="server" Text="LogIn / Register"
                                                    OnClick="btn_signin_Click" />
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

        <!--==========================
    Intro Section
  ============================-->
        <section id="intro" class="clearfix">
            <div class="container">

                <div class="intro-img">
                    <img alt="" src="img/intro-img.png" class="img-fluid" />
                </div>

                <div class="intro-info">
                    <h2>We provide<br>
                        <span>solutions</span><br>
                        for your documents!</h2>
                    <div>
                        <a href="#about" class="btn-get-started scrollto">
                            <asp:Label ID="btn_getstart" runat="server" Text="Get Started"></asp:Label></a>
                        <a href="#services" class="btn-services scrollto">
                            <asp:Label ID="btn_Ourservices" runat="server" Text="Our Services"></asp:Label></a>
                    </div>
                </div>

            </div>
        </section>
        <!-- #intro -->

        <main id="main">
        <section id="about" style="background-image: url('http://localhost:1245/00_DigiDocs/srvbox_img/01.jpg')">
      <div class="container">

        <header class="section-header">
          <h3>About Us</h3>
          <p>The Documnet Registration and Digital locker </p>
        </header>

        <div class="row about-container">

          <div class="col-lg-6 content order-lg-1 order-2">
            <p>
              
            </p>

            <div class="icon-box wow fadeInUp">
              <div class="icon"><i class="fa fa-database"></i></div>
              
              <h4 class="title"><a href=""><asp:Label ID="lbl_lcksrv" runat="server" Text="Digital Space"></asp:Label></a></h4>
              <p class="description">This is very easy and you can use space for  Document 
                  ,you can to view your id proof</p>
            </div>

            <div class="icon-box wow fadeInUp" data-wow-delay="0.2s">
              <div class="icon"><i class="fa fa fa-registered"></i></div>
              <h4 class="title"><a href="frm_Issue.aspx"><asp:Label ID="lbl_nwrsrv" runat="server" Text="Document Registration"></asp:Label></a></h4>
              <p class="description">Issue document come directly into Digidocs from registered department & agencies.
</p>
            </div>

            <div class="icon-box wow fadeInUp" data-wow-delay="0.4s">
              <div class="icon"><i class="fa fa-share-alt"></i></div>
              <h4 class="title"><a href=""><asp:Label ID="Label1" runat="server" Text="Document Sharing"></asp:Label></a></h4>
              <p class="description">This section shows all documents / certificates you have shared with others via email.Issue document come directly into Digidocs from registered department & agencies.</p>
            </div>

          </div>

          <div class="col-lg-6 background order-lg-2 order-1 wow fadeInUp">
            <img src="img/about-img.png" class="img-fluid" alt="">
          </div>
        </div>

        <div class="row about-extra">
          <div class="col-lg-6 wow fadeInUp">
            <img src="img/about-extra-1.png" class="img-fluid" alt="">
          </div>
          <div class="col-lg-6 wow fadeInUp pt-5 pt-lg-0">
            <h4>How Can I get DigiDocs Account?</h4>
<p>
               Sign Up Account in DigiDocs and Register Details for Username & Password.This will create your DigiDoc
    Account.You will have your Application Number.
            </p>
            <p>
                After you have finally get Application Number.Application Number will create your Document Request in DigiDocs.
After you can Request for Aadhar Card,Pan Card,Voter Card And Driving Licence.
            </p>
          </div>
        </div>

        <div class="row about-extra">
          <div class="col-lg-6 wow fadeInUp order-1 order-lg-2">
            <img src="img/about-extra-2.png" class="img-fluid" alt="">
          </div>

          <div class="col-lg-6 wow fadeInUp pt-4 pt-lg-0 order-2 order-lg-1">
            <h4>DigiDocs Website Work This</h4>
            <p>
              Regestration User are request for Aadhar Card, Pan Card,Voter Card & Driving Licenc in DigiDocs.
    There are Requsted Document to verify by Issuer User.
</p>
            <p>
              Aadhar card ,Pan card,Voter Card & Driving Licenc Verified by Issuer.
    After Document Details Cofirm to DigiDocs ,After I will Get print of Document Regiter in Application Number.  
            </p>
            <p>
             Share section is show Document/Certificate you have share other via Media. 
            </p>
          </div>
          
        </div>

      </div>
    </section><!-- #about -->

    <!--==========================
      Services Section
    ============================-->
    <section id="services" class="section-bg">
      <div class="container">

        <header class="section-header">
          <h3>Services</h3>
          <p>Document registration & change deatails in certificates</p>
        </header>

        <div class="row">

          <div class="col-md-6 col-lg-5 offset-lg-1 wow bounceInUp" data-wow-duration="1.4s">
                <div class="box" style="background-image: url('srvbox_img/aadharcard.jpg'); background-repeat: no-repeat; background-attachment: scroll; background-size:cover; ">
                    <h4 class="title"><a href="">Aadhar Card</a></h4>
                    <p class="description">Aadhaar is a 12-digit unique identity
                     number that can be obtained voluntarily by residents or passport holders of India,
                      based on their biometric and demographic data.</p>
                </div>  
          </div>

          <div class="col-md-6 col-lg-5 wow bounceInUp" data-wow-duration="1.4s">
                <div class="box" style="background-image: url('srvbox_img/licence.jpg'); background-repeat: no-repeat; background-attachment: scroll; background-size:cover;">
                    <h4 class="title"><a href="">Driving License</a></h4>
                    <p class="description">In India, a driving licence is an official document that authorises its holder to operate various types of motor vehicles on highways and some other roads to which the public have access. </p>
                </div>
          </div>

          <div class="col-md-6 col-lg-5 offset-lg-1 wow bounceInUp" data-wow-delay="0.1s" data-wow-duration="1.4s">
                <div class="box" style="background-image: url('srvbox_img/pancard.jpg'); background-repeat: no-repeat; background-attachment: scroll; background-size:cover;">
                    <h4 class="title"><a href="">Pan Card</a></h4>
                    <p class="description">Permanent Account Number or PAN is a means of identifying various taxpayers in the country. 
                    The PAN system of identification is a computer-based system that assigns unique identification number to every Indian tax paying entity.
                    </p>
                </div>
          </div>

          <div class="col-md-6 col-lg-5 wow bounceInUp" data-wow-delay="0.1s" data-wow-duration="1.4s">
                <div class="box" style="background-image: url('srvbox_img/voter.jpg'); background-repeat: no-repeat; background-attachment: scroll; background-size:cover;">
                    <h4 class="title"><a href="">Voter Card</a></h4>
                    <p class="description">A voter invitation card is an informational leaflet, 
                    usually of the size of a postcard, which requests voters 
                    to attend the elections and which generally contains information regarding elections and contact details of the electoral commission.</p>
                </div>
          </div>

        </div>

      </div>
    </section><!-- #services -->

   
    <!--==========================
      Why Us Section
    ============================-->
    <section id="why-us" class="wow fadeIn">
      <div class="container">
        <header class="section-header">
          <h3>Why choose us?</h3>
          <p>Register And Store Document Client Data in DigiDocs</p>
        </header>

        <div class="row row-eq-height justify-content-center">

          <div class="col-lg-4 mb-4">
            <div class="card wow bounceInUp">
                <i class="fa fa-database"></i>
              <div class="card-body">
                <h5 class="card-title">Digital Space</h5>
                <p class="card-text">This is very easy and you can use space for  Document 
                  ,you can to view your id proof.</p>
                <a href="#" class="readmore">Read more </a>
              </div>
            </div>
          </div>

          <div class="col-lg-4 mb-4">
            <div class="card wow bounceInUp">
                <i class="fa  fa-registered"></i>
              <div class="card-body">
                <h5 class="card-title">Document Registration</h5>
                <p class="card-text">Issue document come directly into Digidocs from registered department & agencies.</p>
                <a href="#" class="readmore">Read more </a>
              </div>
            </div>
          </div>

          <div class="col-lg-4 mb-4">
            <div class="card wow bounceInUp">
                <i class="fa fa-share-alt"></i>
              <div class="card-body">
                <h5 class="card-title">Documnet Sharing</h5>
                <p class="card-text">This section shows all documents / certificates you have shared with others via email.</p>
                <a href="#" class="readmore">Read more </a>
              </div>
            </div>
          </div>

        </div>

        <div class="row counters">

          <div class="col-lg-3 col-6 text-center">
            <span data-toggle="counter-up">274</span>
            <p>Clients</p>
          </div>

          <div class="col-lg-3 col-6 text-center">
            <span data-toggle="counter-up">421</span>
            <p>Projects</p>
          </div>

          <div class="col-lg-3 col-6 text-center">
            <span data-toggle="counter-up">1,364</span>
            <p>Hours Of Support</p>
          </div>

          <div class="col-lg-3 col-6 text-center">
            <span data-toggle="counter-up">18</span>
            <p>Hard Workers</p>
          </div>
  
        </div>

      </div>
    </section>

    <!--==========================
      Clients Section
    ============================-->
    <section id="testimonials" class="section-bg">
      <div class="container">

        <header class="section-header">
          <h3>Testimonials</h3>
        </header>

        <div class="row justify-content-center">
          <div class="col-lg-8">

            <div class="owl-carousel testimonials-carousel wow fadeInUp">
    
              <div class="testimonial-item">
                <img src="img/vishal.jpg" class="testimonial-img" alt="">
                <h3>Vishal Gohil</h3>
                <h4> Software Devloper</h4>
                <p>
                  Studying in BCA, as a student. Current Creates a Web Application, Android Application, and Window Application.
                </p>
              </div>
    
              <div class="testimonial-item">
                <img src="img/urmal.jpg" class="testimonial-img" alt="">
                <h3>Urmal Hadiyal</h3>
                <h4>Software Devloper</h4>
                <p>
                  Studying in BCA, as a student. Current Creates a Web Application, Android Application, and Window Application.
                </p>
              </div>
    
            </div>

          </div>
        </div>


      </div>
    </section><!-- #testimonials -->

    <!--==========================
      Team Section
    ============================-->
    <section id="team">
      <div class="container">
        <div class="section-header">
          <h3>Team</h3>
          <p></p>
        </div>

        <div class="row">

          <div class="col-lg-3 col-md-6 wow fadeInUp">
            <div class="member">
              <img src="img/urmal.jpg" class="img-fluid" alt="">
              <div class="member-info">
                <div class="member-info-content">
                  <h4>Urmal Hadiyal</h4>
                  <span>Project Team</span>
                  
                  <div class="social">
                    <a href=""><i class="fa fa-twitter"></i></a>
                    <a href=""><i class="fa fa-facebook"></i></a>
                    <a href=""><i class="fa fa-google-plus"></i></a>
                    <a href=""><i class="fa fa-linkedin"></i></a>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
            <div class="member">
              <img src="img/su.jpg" class="img-fluid" alt="">
              <div class="member-info">
                <div class="member-info-content">
                  <h4>Saurashtra University</h4>
                  <span>Rajkot</span>
                  <div class="social">
                    <a href=""><i class="fa fa-twitter"></i></a>
                    <a href=""><i class="fa fa-facebook"></i></a>
                    <a href=""><i class="fa fa-google-plus"></i></a>
                    <a href=""><i class="fa fa-linkedin"></i></a>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.2s">
            <div class="member">
              <img src="img/hjd.jpg" class="img-fluid" alt="">
              <div class="member-info">
                <div class="member-info-content">
                  <h4>H J Doshi</h4>
                  <span>IT Institute</span>
                  <div class="social">
                    <a href=""><i class="fa fa-twitter"></i></a>
                    <a href=""><i class="fa fa-facebook"></i></a>
                    <a href=""><i class="fa fa-google-plus"></i></a>
                    <a href=""><i class="fa fa-linkedin"></i></a>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
            <div class="member">
              <img src="img/vishal.jpg" class="img-fluid" alt="">
              <div class="member-info">
                <div class="member-info-content">
                  <h4>Vishal Gohil</h4>
                  <span>Project Team</span>
                  <div class="social">
                    <a href=""><i class="fa fa-twitter"></i></a>
                    <a href=""><i class="fa fa-facebook"></i></a>
                    <a href=""><i class="fa fa-google-plus"></i></a>
                    <a href=""><i class="fa fa-linkedin"></i></a>
                  </div>
                </div>
              </div>
            </div>
          </div>

        </div>

      </div>
    </section><!-- #team -->


    <!--==========================
      Contact Section
    ============================-->
    <section id="contact">
      <div class="container-fluid">

        <div class="section-header">
          <h3>Contact Us</h3>
        </div>

        <div class="row wow fadeInUp">

          <div class="col-lg-6">
            <div class="map mb-4 mb-lg-0">
              <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3686.600781407713!2d70.0600989144324!3d22.481631641970377!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39576aa8807c6ecf%3A0xdc38c612891ec83!2sBhavan&#39;s%20Shree%20H.J%20Doshi%20Information%20Technology%20Institute!5e0!3m2!1sen!2sin!4v1577351915751!5m2!1sen!2sin"
frameborder="0" style="border:0; width: 100%; height: 312px;" allowfullscreen></iframe>
</div>
          </div>

          <div class="col-lg-6">
            <div class="row">
              <div class="col-md-5 info">
                <i class="ion-ios-location-outline"></i>
                <p>Mahila College Campus, Mahila College Road</p>
              </div>
              <div class="col-md-4 info">
                <i class="ion-ios-email-outline"></i>
                <p>Hjd@gmail.com</p>
              </div>
              <div class="col-md-3 info">
                <i class="ion-ios-telephone-outline"></i>
                <p>+1 5589 55488 55</p>
              </div>
            </div>

            <div class="form">
              <div id="sendmessage">Your message has been sent. Thank you!</div>
<div id="errormessage"></div>
              <form action="" method="post" role="form" class="contactForm">
                <div class="form-row">
                  <div class="form-group col-lg-6">
                    <input type="text" name="name" class="form-control" id="name"
placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars"
/>
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-6">
                    <input type="email" class="form-control" name="email" id="email"
placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email"
/>
                    <div class="validation"></div>
                  </div>
                </div>
                <div class="form-group">
                  <input type="text" class="form-control" name="subject" id="subject"
placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars
of subject" />
                  <div class="validation"></div>
                </div>
                <div class="form-group">
                  <textarea class="form-control" name="message" rows="5" data-rule="required"
data-msg="Please write something for us" placeholder="Message"></textarea>
                  <div class="validation"></div>
                </div>
                <div class="text-center"><button type="submit" title="Send Message">Send
Message</button></div>
              </form>
            </div>
          </div>

        </div>

      </div>
    </section><!-- #contact -->

  </main>

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
