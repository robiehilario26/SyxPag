<!DOCTYPE html>

<html lang="en">
    <head>
        <!-- Basic Page Needs
        ================================================== -->
        <meta charset="utf-8">
        <!--[if IE]><meta http-equiv="x-ua-compatible" content="IE=9" /><![endif]-->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Alimsaidbasher</title>
        <meta name="description" content="Spirit8 is a Digital agency one page template built based on bootstrap framework. This template is design by Robert Berki and coded by Jenn Pereira. It is simple, mobile responsive, perfect for portfolio and agency websites. Get this for free exclusively at ThemeForces.com">
        <meta name="keywords" content="bootstrap theme, portfolio template, digital agency, onepage, mobile responsive, spirit8, free website, free theme, themeforces themes, themeforces wordpress themes, themeforces bootstrap theme">
        <meta name="author" content="ThemeForces.com">

        <!-- Favicons
        ================================================== -->
        <link rel="shortcut icon" href="bash/img/favicon.ico" type="image/x-icon">
        <link rel="apple-touch-icon" href="bash/img/apple-touch-icon.png">
        <link rel="apple-touch-icon" sizes="72x72" href="bash/img/apple-touch-icon-72x72.png">
        <link rel="apple-touch-icon" sizes="114x114" href="bash/img/apple-touch-icon-114x114.png">

        <!-- Bootstrap -->
        <link rel="stylesheet" type="text/css"  href="bash/css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="bash/fonts/font-awesome/css/font-awesome.css">

        <!-- Slider
        ================================================== -->
        <link href="bash/css/owl.carousel.css" rel="stylesheet" media="screen">
        <link href="bash/css/owl.theme.css" rel="stylesheet" media="screen">

        <!-- Stylesheet
        ================================================== -->
        <link rel="stylesheet" type="text/css"  href="bash/css/style.css">
        <link rel="stylesheet" type="text/css"  href="bash/css/style_1.css">
        <link rel="stylesheet" type="text/css" href="bash/css/responsive.css">

        <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,700,300,600,800,400' rel='stylesheet' type='text/css'>

        <script type="text/javascript" src="bash/js/modernizr.custom.js"></script>
        <script type="text/javascript" src="bash/js/jquery.1.11.1.js"></script>

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        
        <style>
        
         
        <![endif]-->





    </head>


    <body>
        <!-- Navigation
        ==========================================-->
        <nav id="tf-menu" class="navbar navbar-default navbar-fixed-top">

            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.jsp">Aleem said basher</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#tf-home" class="page-scroll" onclick="click_me()">Home</a></li>
                        <li><a href="#tf-about" class="page-scroll">About</a></li>
                        <li><a href="#tf-gallery" class="page-scroll">Gallery</a></li>
                        <li><a href="#tf-blog" class="page-scroll">Blog</a></li>
                        <li><a href="#tf-team" class="page-scroll">Team</a></li>
                        <li><a href="#tf-services" class="page-scroll">Services</a></li>

                        <li><a href="#tf-programs" class="page-scroll">Program</a></li>
                        <li><a href="#tf-files" class="page-scroll">File</a></li>
                        <li><a href="#tf-contact" class="page-scroll">Contact</a></li>

                        <li><a href="#tf-lastAcknowledge" class="page-scroll">Acknowledgement</a></li>
                    </ul>
                </div>

                <!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>



        <!-- Home Page
        ==========================================-->
        <div id="tf-home" class="text-center">
            <div class="overlay">
                <div class="content">

                    <h1>Welcome on <strong><span class="color">ALEEm SAID  AHMAD BASHER</span></strong></h1>
                    <!--<p class="lead">We are a digital agency with <strong>years of experience</strong> and with <strong>extraordinary people</strong></p>-->
                    <p class="lead">Who is   ALEEM SAID AHMAD BASHER ?<p>
                        <a href="#tf-about" class="fa fa-angle-down page-scroll"></a>
                </div>
            </div>
        </div>

        <!-- About Us Page
        ==========================================-->


        <script>


            function load_data() {
                console.log("success load load_data");
                $.ajax({
                    type: "get", // GET or POST
                    url: 'Data_table_about', // Path to file


                    beforeSend: function () {                                // Before Ajax 

                    },
                    complete: function () {

                        //$success.show();
                    },
                    success: function (response) {
// Show content
                        //                alert(response.toString());
//about-list
                        $.each(response, function (index, value) {


                            // console.log(value.id + " " + value.title + " " + value.article + " " + value.date_modified);
                            var about_list_content = '<li>'
                                    + '<span class="fa fa-dot-circle-o"></span>'
                                    + '<strong>' + value.title + '</strong> - <em > <p align="justify">' + value.article + ' </p></em>'
                                    + ' </li>';
                            $("#about_data_here").append(about_list_content);
                        });
                    },
                    error: function (xhr) {

                    }
                });
            }
            $(document).ready(function () {
                console.log("ready!");
                //append_about_here

                load_data();


                load_data_gallery();
                load_filter_gallery();
            });




        </script>



        <script>
            window.fbAsyncInit = function () {
                FB.init({
                    appId: 'your-app-id',
                    xfbml: true,
                    version: 'v2.7'
                });
            };

            (function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id)) {
                    return;
                }
                js = d.createElement(s);
                js.id = id;
                js.src = "//connect.facebook.net/en_US/sdk.js";
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));
        </script>


        <script>(function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id))
                    return;
                js = d.createElement(s);
                js.id = id;
                js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.7";
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));</script>


        <div id="tf-about">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">   
                        <img src="bash/img/02.png" class="img-responsive">
                        <nav id="thisthisocial">
                            <div class="pull-right fnav">
                                <ul class="social-social_icon">



                                    <li><a href="#">   <img class="fa fa-dribbble" src="img/icon/alahzar-university.png" alt="Mountain View" style="width:35px;height:35px;"></a></li>
                                    <li><a href="#">   <img class="fa fa-dribbble" src="img/icon/imamcouncil2.png" alt="Mountain View" style="width:35px;height:35px;"></a></li>
                                    <li><a href="#">   <img class="fa fa-dribbble" src="img/icon/jiamat2.png" alt="Mountain View" style="width:35px;height:35px;"></a></li>
                                    <li><a href="#">   <img class="fa fa-dribbble" src="img/icon/rotary.png" alt="Mountain View" style="width:35px;height:35px;"></a></li>

                                    <!--                                    <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-youtube"></i></a></li>-->
                                </ul>
                            </div>
                        </nav>

                        <div class="space" class="col-md-6"></div>


                        <div class="fb-page" 
                             data-tabs="timeline,events"
                             data-href="https://web.facebook.com/I-am-asab-1033253273448461/?skip_nax_wizard=true"
                             data-width="800"
                             data-height="800" ></div>
                        <div class="space" class="col-md-6"></div>

                        <div> 
                            <a class="twitter-timeline"
                               href="https://twitter.com/iamasab2016">Tweets by iamasab2016</a> 
                            <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
                        </div>

                        <div class="space" class="col-md-6"></div>

                        <blockquote class="instagram-media" 
                                    data-instgrm-captioned data-instgrm-version="7" 
                                    style=" background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15);
                                    margin: 1px; max-width:658px; padding:0; width:99.375%; width:-webkit-calc(100% - 2px); width:calc(100% - 2px);">
                            <div style="padding:8px;"> <div style=" background:#F8F8F8; line-height:0; margin-top:40px; padding:50.0% 0; text-align:center; width:100%;"> 
                                    <div style=" background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACwAAAAsCAMAAAApWqozAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAAMUExURczMzPf399fX1+bm5mzY9AMAAADiSURBVDjLvZXbEsMgCES5/P8/t9FuRVCRmU73JWlzosgSIIZURCjo/ad+EQJJB4Hv8BFt+IDpQoCx1wjOSBFhh2XssxEIYn3ulI/6MNReE07UIWJEv8UEOWDS88LY97kqyTliJKKtuYBbruAyVh5wOHiXmpi5we58Ek028czwyuQdLKPG1Bkb4NnM+VeAnfHqn1k4+GPT6uGQcvu2h2OVuIf/gWUFyy8OWEpdyZSa3aVCqpVoVvzZZ2VTnn2wU8qzVjDDetO90GSy9mVLqtgYSy231MxrY6I2gGqjrTY0L8fxCxfCBbhWrsYYAAAAAElFTkSuQmCC); display:block; height:44px; margin:0 auto -44px; position:relative; top:-22px; width:44px;"></div></div> 
                                <p style=" margin:8px 0 0 0; padding:0 4px;"> <a href="https://www.instagram.com/p/BH66uUzgMOJ/" style=" color:#000; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px; text-decoration:none; word-wrap:break-word;" target="_blank">Salam, how beautiful the old makkah.</a></p>
                                <p style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; line-height:17px; margin-bottom:0; margin-top:8px; overflow:hidden; padding:8px 0 7px; text-align:center; text-overflow:ellipsis; white-space:nowrap;">A photo posted by aleem said basher (@iamasab2016) on <time style=" font-family:Arial,sans-serif; font-size:14px; line-height:17px;" datetime="2016-07-16T11:25:05+00:00">Jul 16, 2016 at 4:25am PDT</time></p>
                            </div></blockquote>
                        <script async defer src="//platform.instagram.com/en_US/embeds.js"></script>

                        <div class="space" class="col-md-6"></div>




                    </div>
                    <div class="col-md-6">
                        <div class="about-text">
                            <div id="append_about_here" class="section-title">
                                <h4>About </h4>
                                <h2> Aleem <strong> Said Ahmad Basher </strong></h2>
                                <hr>
                                <div class="clearfix"></div>


                            </div>
                            <ul id="about_data_here" class="about-list">


                            </ul>

                        </div>
                    </div>
                </div>

            </div>

        </div>


        <!-- Team Page
        ==========================================-->

        <script>
            function load_team() {
                $.ajax({
                    type: "get", // GET or POST
                    url: 'Data_table_team', // Path to file
                    beforeSend: function () {                                // Before Ajax
                    },
                    complete: function () {
                        //$success.show();
                    },
                    success: function (response) {
                        $.each(response, function (index, value) {
                            //                            console.log("The value for the team members" + value.id + " " + value.title + " " + value.article + " " + value.date_modified);
                            var table_name = "team";
                            var id_pic = value.id.toString();
                            var about_list_team = '<div class="owl-item" style="width: 285px;">'
                                    + ' <div class="thumbnail">'
                                    + '<img src="Picture_view?id=' + id_pic + '&set_table=' + table_name + '" alt = "User Image"  class="img-circle team-img" />'
                                    + '  <div class="caption">'
                                    + '  <h3>' + value.title + '</h3>'
                                    + '   <p>' + value.article + ' </p>'
                                    + '  </div>'
                                    + '  </div>'
                                    + ' </div> ';
                            setTimeout(function () {

                                $("#team").append(about_list_team);
                            }, 200);
                        });
                    },
                    error: function (xhr) {

                    }
                });
            }
            $(document).ready(function () {
                console.log("ready!");
                //append_about_here


                var sample_data = '<div class="item" id="team1" style="display:none">'
                        + ' <div class="thumbnail">'
                        + '  <img src="bash/img/team/01.jpg" alt="..." class="img-circle team-img">'
                        + ' <div class="caption">'
                        + '    <h3>Kycen Magoyag</h3>'
                        + '   <p> Developer / Web Designer / IT Support /Photographer  </p>'
                        + '    <p>Do not seek to change what has come before. Seek to create that which has not.</p>'
                        + '  </div>'
                        + '  </div>'
                        + ' </div>';
                $("#team").append(sample_data);
                setTimeout(function () {

                    load_team();
                    // $("#team1").hide();


                }, 200);
            });</script>



        <!-- Clients Gallery
               ==========================================-->

        <div id="tf-gallery">
            <div class="overlay">

                <div class="container"> <!-- Container -->
                    <div class="section-title text-center center">
                        <h2>Take a look at <strong>our gallery</strong></h2>
                        <div class="line">
                            <hr>
                        </div>
                        <div class="clearfix"></div>
                        <!--<small><em>Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</em></small>-->


                        <div id="draw_filter" class="categories">

                        </div>
                    </div>
                    <div id="lightbox" class="row ">


                    </div>
                </div>
            </div>
        </div>


        <div id="tf-blog">
            <div class="container"> <!-- Container -->
                <div class="section-title text-center center">
                    <h2> <strong>My Video Blog</strong></h2>
                    <div class="line">
                        <hr>
                    </div>
                    <div class="clearfix"></div>
                    <small><em>Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</em></small>
                </div>
                <div class="row">

                    <div class="col-md-8" id="ul_content_data">

                    </div>

                    <div class="col-md-4">
                        <div class="categories">
                            <h3><strong>Categories</strong></h3>
                            <ul class="about-list" style="column-count: 1;" id="blog_title">

                            </ul>
                        </div>
                    </div>
                    <div class="space"></div>
                </div>
            </div>

        </div>




        <div id="tf-team" class="text-center">
            <div class="overlay">
                <div class="container">
                    <div class="section-title center">
                        <h2>Meet <strong>My Team</strong></h2>
                        <div class="line">
                            <hr>
                        </div>
                    </div>

                    <div id="team" class="owl-carousel owl-theme row">




                        <!--
                                                <div class="item">
                                                    <div class="thumbnail">
                                                        <img src="bash/img/team/01.jpg" alt="..." class="img-circle team-img">
                                                        <div class="caption">
                                                            <h3>Kycen Magoyag</h3>
                                                            <p> Developer / Web Designer / IT Support /Photographer  </p>
                                                            <p>Do not seek to change what has come before. Seek to create that which has not.</p>
                                                        </div>
                                                    </div>
                                                </div>-->

                        <!--                        <div class="item">
                                                    <div class="thumbnail">
                                                        <img src="bash/img/team/02.jpg" alt="..." class="img-circle team-img">
                                                        <div class="caption">
                                                            <h3>Jamalodin M.Samsodin</h3>
                                                            <p>IT / Tech Support / Phil Post Support</p>
                                                            <p>Do not seek to change what has come before. Seek to create that which has not.</p>
                                                        </div>
                                                    </div>
                                                </div>-->



                    </div>
                </div>
            </div>
        </div>






        <!-- Team Page
      ==========================================-->

        <script>
            function load_data_services() {

                $.ajax({
                    type: "get", // GET or POST
                    url: 'Data_table_services', // Path to file
                    beforeSend: function () {                                // Before Ajax 

                    },
                    complete: function () {
                    },
                    success: function (response) {

                        $.each(response, function (index, value) {
                            // console.log(value.id + " " + value.title + " " + value.article + " " + value.date_modified);
                            var about_list_services = ' <div class="col-md-3 col-sm-6 service">'
                                    + '' + value.title + ' '
                                    + '<p> ' + value.article + '</p>'
                                    + ' </div>';
                            $("#basher_services").append(about_list_services);
                        });
                    },
                    error: function (xhr) {
                    }
                });
            }
            $(document).ready(function () {
                load_data_services();
            });</script>


        <div id="tf-services" class="text-center">
            <div class="overlay">
                <div class="container">
                    <div class="section-title center">
                        <h2>Take a look at <strong>our services</strong></h2>
                        <div class="line">
                            <hr>
                        </div>
                        <div class="clearfix"></div>
                        <H3><em>Assalamu'alaikom brothers and sisters in islam, please do approach if you want some services, for student both muslim and non muslim can approach and invite me for their class,subject,gathering, regarding the islamic lecture, and science in faith in islam.</H3></small>
                    </div>

                    <!--<div id="team" class="owl-carousel owl-theme row">-->
                    <div class="space"></div>
                    <div id="basher_services" class="row">

                    </div>
                    <!--</div>-->

                </div>
            </div>
        </div>

        <div id="tf-activities" class="text-center">
            <div class="overlay">
                <div class="container">
                    <div class="section-title center">
                        <h2><strong>My Activities</strong></h2>
                        <div class="line">
                            <hr>
                        </div>
                        <div class="clearfix"></div>
                        <H3><em>Assalamu'alaikom brothers and sisters in islam, please do approach if you want some services, for student both muslim and non muslim can approach and invite me for their class,subject,gathering, regarding the islamic lecture, and science in faith in islam.</H3></small>
                    </div>

                    <!--<div id="team" class="owl-carousel owl-theme row">-->
                    <div class="space"></div>
                    <div class="row"> 
                        <div class="col-md-8" id="ul_content_data_activity_data">

                            <!--                            <img src="bash/img/02.png"    style="width:500px;height:500px;"  class="img-responsive">
                                                        <p>Earlier we discussed about abstract class which is used to achieve partial abstraction(hiding irrelevant details from user). 
                                                            In this tutorial we are going to discuss about interfaces, which are used for achieving full abstraction. In this post, we will discuss what is an interface? what is the significance of it? when and how to use it? <p>-->

                        </div>

                        <div class="col-md-4">
                            <div class="categories">
                                <h3><strong>Activities</strong></h3>
                                <ul class="about-list" style="column-count: 1;" id="activity_title_data">
                                    <!--                                    <li> <span  class="fa fa-angle-double-right" > </span><span>  <a href="#tf-blog">Title of the Actitvity 1</a></span></li>
                                                                        <li> <span  class="fa fa-angle-double-right" > </span><span>  <a href="#tf-blog">Title of the Actitvity 2</a></span></li>
                                                                        <li> <span  class="fa fa-angle-double-right" > </span><span>  <a href="#tf-blog">Title of the Actitvity 3</a></span></li>-->
                                </ul>



                            </div>

                            <button id="previous" class="btn btn-primary" onclick="off_set_decrement()">«Prev</button>
                            <button id="next" class="btn btn-primary" onclick="off_set_increment()">Next»</button>

                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!--        <div id="tf-activity_list">
                    <div class="container">  Container 
                        <div class="section-title text-center center">
                            <h2> <strong>My Activity</strong></h2>
                            <div class="line">
                                <hr>
                            </div>
                            <div class="clearfix"></div>
        
                        </div>
                        <div class="row">
        
                            <div class="col-md-8" id="ul_content_data_activity_data">
                                
                                   <img src="bash/img/02.png"    style="width:500px;height:500px;"  class="img-responsive">
                                   <p>Earlier we discussed about abstract class which is used to achieve partial abstraction(hiding irrelevant details from user). 
                                       In this tutorial we are going to discuss about interfaces, which are used for achieving full abstraction. In this post, we will discuss what is an interface? what is the significance of it? when and how to use it? <p>
        
                            </div>
        
                            <div class="col-md-4">
                                <div class="categories">
                                    <h3><strong>Activities</strong></h3>
                                    <ul class="about-list" style="column-count: 1;" id="activity_title_data">
                                        <li> <span  class="fa fa-angle-double-right" > </span><span>  <a href="#tf-blog">Title of the Actitvity 1</a></span></li>
                                        <li> <span  class="fa fa-angle-double-right" > </span><span>  <a href="#tf-blog">Title of the Actitvity 2</a></span></li>
                                        <li> <span  class="fa fa-angle-double-right" > </span><span>  <a href="#tf-blog">Title of the Actitvity 3</a></span></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="space"></div>
                        </div>
                    </div>
        
                </div>-->



        <div class="space"></div>


        <div class="space"></div>





        <div id="tf-programs" class="text-center">
            <div class="overlay">
                <div class="container">
                    <div class="section-title center">
                        <h2><strong>My Programs</strong></h2>
                        <div class="line">
                            <hr>
                        </div>
                        <div class="clearfix"></div>
                        <small><em>Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</em></small>
                    </div>
                    <div class="row">
                        <ul class="about-list" style="column-count: 3;" id="basher_program">

                        </ul>
                    </div>
                </div>
            </div>
        </div>



        <!-- Contact Section
        ==========================================-->
        <script>
            function load_data_contact_us() {

                $.ajax({
                    type: "get", // GET or POST
                    url: 'Data_table_Contact', // Path to file
                    beforeSend: function () {                                // Before Ajax 

                    },
                    complete: function () {
                    },
                    success: function (response) {

                        $.each(response, function (index, value) {

                            var about_list_contact = '<li>'
                                    + '<span class="fa fa-phone"> </span>'
                                    + '<strong>' + value.title + '</strong>'
                                    + '<p>' + value.contact_info + '</p>'
                                    + '</li>';

                            $("#basher_contact_in_here").append(about_list_contact);
                        });
                    },
                    error: function (xhr) {
                    }
                });
            }
            $(document).ready(function () {
                load_data_contact_us();
            });</script>




        <div id="tf-contact" class="text-center">
            <div class="container">

                <div class="row">
                    <div class="col-md-8 col-md-offset-2">

                        <div class="section-title center">
                            <h2>Feel free to <strong>contact us</strong></h2>
                            <div class="line">
                                <hr>
                            </div>
                            <div class="clearfix"></div>
                            <!--                            <small><em>Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</em></small>            -->

                            <ul class="about-list"  id="basher_contact_in_here" style="column-count: 3;">

                            </ul>


                        </div>
                        <div class="clearfix"></div>
                        <small><em>You can also reach us through email by filling up  and submitting the form below.</em></small>            


                        <form>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="Name">Name</label>
                                        <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Your name">
                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Email address</label>
                                        <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Message</label>
                                <textarea class="form-control" rows="3"></textarea>
                            </div>

                            <button type="submit" class="btn tf-btn btn-default">Submit</button>
                        </form>





                    </div>
                </div>

            </div>
        </div>

        <!-- Clients Program Section
        ==========================================-->

        <script>
            function load_data_Program() {

                $.ajax({
                    type: "get", // GET or POST
                    url: 'Data_table_Program', // Path to file
                    beforeSend: function () {                                // Before Ajax 

                    },
                    complete: function () {
                    },
                    success: function (response) {

                        $.each(response, function (index, value) {



                            // console.log(value.id + "Thrones of inaarw araw " + value.title + " " + value.article + " " + value.date_modified);
                            var program_list = ' <li>'
                                    + '    <span class="fa fa-star-o"></span>'
                                    + '  <strong>' + value.title + '</strong>  '
                                    + '<p>' + value.article + ' </p>'
                                    + '</li>';
                            $("#basher_program").append(program_list);
                        });
                    },
                    error: function (xhr) {
                    }
                });
            }
            $(document).ready(function () {
                load_data_Program();
            });</script>




        <!-- Blog Section ==========================================-->



        <script>


            function clcik_me(elem) {

                var id = $(elem).attr("id");
                var the_id = $('#' + id + '').text();
                var title = $('#' + id + '').text();
                //                alert(id);
                //  alert(title);

                console.log("title :" + the_id);
                $.ajax({
                    type: "get", // GET or POST
                    url: 'BlogViewSingleData', // Path to file
                    data: {title: title},
                    beforeSend: function () {                                // Before Ajax 
                        $("#basher_blog_content").remove();
                    },
                    complete: function () {
                    },
                    success: function (response) {

                        var the_ul = '  <ul class="about-list" id="basher_blog_content">'
                                + '<ul>';
                        $("#ul_content_data").append(the_ul);
                        $.each(response, function (index, value) {


                            var blog_content = ' <li>  '
                                    + '<h4><strong>' + value.title + '</strong></h4>'
                                    + ' <iframe width="450px" height="350px"'
                                    + ' src="' + value.video_link + '" allowfullscreen="allowfullscreen" mozallowfullscreen="mozallowfullscreen" msallowfullscreen="msallowfullscreen" oallowfullscreen="oallowfullscreen" webkitallowfullscreen="webkitallowfullscreen">>'
                                    + '</iframe>'
                                    + ' <p class="text-justify">' + value.article + '</p>'
                                    + '</li>';
                            $("#basher_blog_content").append(blog_content);
                        });
                    },
                    error: function (xhr) {

                    }
                });
            }
            
            
             function onload_click_me_activity() {

               
                $.ajax({
                    type: "get", // GET or POST
                    url: 'on_load', // Path to file
                    
                    beforeSend: function () {                                // Before Ajax 
//                        $("#basher_blog_content").remove();
                    },
                    complete: function () {
                    },
                    success: function (response) {


                        $.each(response, function (index, value) {

                            console.log(value.title);
                            console.log("desc " + value.desc);

                            var text = '<img  src="Picture_view?id=' + value.id + '&set_table=' + "tb_activity" + '" style="width:500px;height:500px;"  class="img-responsive">';
                            text = text + '<p>' + value.desc + '</p>';
                            document.getElementById("ul_content_data_activity_data").innerHTML = text;
                            var li_size = $(".count_me_in").size();
                            console.log(li_size);
                        });
                    },
                    error: function (xhr) {

                    }
                });
            }
            


            function click_me_activity(elem) {

                var id = $(elem).attr("id");
                var the_id = $('#' + id + '').text();
                var title = $('#' + id + '').text();
//                alert(id);
//                alert(title);

//                console.log("title :" + title);
//                console.log("the_id :" + the_id);
                $.ajax({
                    type: "get", // GET or POST
                    url: 'ActivityViewSingleData', // Path to file
                    data: {title: title},
                    beforeSend: function () {                                // Before Ajax 
//                        $("#basher_blog_content").remove();
                    },
                    complete: function () {
                    },
                    success: function (response) {

//                        var the_ul = '  <ul class="about-list" id="basher_blog_content">'
//                                + '<ul>';
//                        $("#ul_content_data").append(the_ul);
                        $.each(response, function (index, value) {

                            console.log(value.title);
                            console.log("desc " + value.desc);
//                            var blog_content = ' <li>  '
//                                    + '<h4><strong>' + value.title + '</strong></h4>'
////                                    + ' <iframe width="450px" height="350px"'
////                                    + ' src="' + value.video_link + '" allowfullscreen="allowfullscreen" mozallowfullscreen="mozallowfullscreen" msallowfullscreen="msallowfullscreen" oallowfullscreen="oallowfullscreen" webkitallowfullscreen="webkitallowfullscreen">>'
////                                    + '</iframe>'
////                                    + ' <p class="text-justify">' + value.article + '</p>'
////                                    + '</li>';
//                            $("#ul_content_data_activity_data").append(blog_content);
//                            var text = '<img src="bash/img/02.png" style="width:500px;height:500px;"  class="img-responsive">';
                            var text = '<img  src="Picture_view?id=' + value.id + '&set_table=' + "tb_activity" + '" style="width:500px;height:500px;"  class="img-responsive">';
                            text = text + '<p>' + value.desc + '</p>';
                            document.getElementById("ul_content_data_activity_data").innerHTML = text;
                            var li_size = $(".count_me_in").size();
                            console.log(li_size);
                        });
                    },
                    error: function (xhr) {

                    }
                });
            }


            function load_data_Blog_title() {


                var counting = 0;
                $.ajax({
                    type: "get", // GET or POST
                    url: 'Data_table_Blog', // Path to file
                    beforeSend: function () {                                // Before Ajax 

                    },
                    complete: function () {
                    },
                    success: function (response) {

                        $.each(response, function (index, value) {

                            console.log("deteect");

                            counting++;
                            var blog_title = '<li>'
                                    + ' <span  class="fa fa-angle-double-right" ></span>'
                                    + '  <span  id="list' + counting + '"   onclick="clcik_me(this)">  <a href="#tf-blog">' + value.title + '</a></span>'
                                    + '</li>';
                            $("#blog_title").append(blog_title);
                        });
                    },
                    error: function (xhr) {
                    }
                });
            }


            function off_set_increment() {
//                var total = off_set_default;
                off_set_default = parseFloat(off_set_default) + parseFloat(5);
                console.log(off_set_default);
                load_data_activity_title(off_set_default);
            }

            var original_off_set;
            function off_set_decrement() {
                original_off_set = off_set_default;
                off_set_default = parseFloat(off_set_default) - parseFloat(5);
                console.log(off_set_default);
                if (off_set_default < 0) {
                    alert("No more previous data to load");
                    off_set_default = 0;
                }
                else
                {
                    load_data_activity_title(off_set_default);
                }

            }

            function load_data_activity_title(value) {
                var off_set_condition;
                var off_set = value;
                var counting = 0;
                $.ajax({
                    type: "get", // GET or POST
                    url: 'data_table_activity', // Path to file
                    data: {offset_value: off_set},
                    beforeSend: function () {                                // Before Ajax 
                        $("#activity_title_data").empty();
                    },
                    complete: function (response) {


                    },
                    success: function (response) {
                        if (response.length == 0) {
                            alert("No more next record data to load");
                            off_set_condition = "false";
                            $('#next').prop('disabled', true);
                        }
                        else
                        {
                             $('#next').prop('disabled', false);
                            var blog_title = "";
                            $.each(response, function (index, value) {

                                console.log("deteect data_table_activity");

                                counting++;
                                blog_title = '<li class="count_me_in">'
                                        + ' <span  class="fa fa-angle-double-right" ></span>'
                                        + '  <span  id="list_activity' + counting + '"   onclick="click_me_activity(this)">  <a href="#tf-blog1">' + value.title + '</a></span>'
                                        + '</li>';
                                $("#activity_title_data").append(blog_title);
                            });
                        }

                    },
                    error: function (xhr) {
                    }
                });
            }


            function check_offset_first(value) {

                var off_set = value;
                var counting = 0;
                $.ajax({
                    type: "get", // GET or POST
                    url: 'data_table_activity', // Path to file
                    data: {offset_value: off_set},
                    beforeSend: function () {                                // Before Ajax 
                        $("#activity_title_data").empty();
                    },
                    complete: function () {
                    },
                    success: function (response) {
                        var blog_title = "";

                        console.log("response " + response.length);
                        if (response.length == 0) {
                            alert("No more next record data to load")
                        }

                        $.each(response, function (index, value) {

                            console.log("deteect data_table_activity");

                            counting++;
                            blog_title = '<li class="count_me_in">'
                                    + ' <span  class="fa fa-angle-double-right" ></span>'
                                    + '  <span  id="list_activity' + counting + '"   onclick="click_me_activity(this)">  <a href="#tf-blog1">' + value.title + '</a></span>'
                                    + '</li>';
                            $("#activity_title_data").append(blog_title);
                        });
                    },
                    error: function (xhr) {
                    }
                });
            }



            function load_data_Blog_title_first_data() {
                var counting = 0;
                $.ajax({
                    type: "get", // GET or POST
                    url: 'BlogFirstView', // Path to file
                    beforeSend: function () {                                // Before Ajax 

                    },
                    complete: function () {
                    },
                    success: function (response) {
                        var the_ul = '  <ul class="about-list" id="basher_blog_content">'
                                + '<ul>';
                        $("#ul_content_data").append(the_ul);
                        $.each(response, function (index, value) {


                            var blog_content = ' <li>  '
                                    + '<h4><strong>' + value.title + '</strong></h4>'
                                    + ' <iframe width="350" height="350"'
                                    + ' src="' + value.video_link + '" allowfullscreen="allowfullscreen" mozallowfullscreen="mozallowfullscreen" msallowfullscreen="msallowfullscreen" oallowfullscreen="oallowfullscreen" webkitallowfullscreen="webkitallowfullscreen">>'
                                    + '</iframe>'
                                    + ' <p class="text-justify">' + value.article + '</p>'
                                    + '</li>';
                            $("#basher_blog_content").append(blog_content);
                        });
                    },
                    error: function (xhr) {
                    }
                });
            }


            var off_set_default = 0;
            $(document).ready(function () {

                load_data_Blog_title();
                off_set_default = 0
                load_data_activity_title(off_set_default);
                load_data_Blog_title_first_data();
                onload_click_me_activity();
            });</script>


        <!-- File Section ==========================================-->

        <script>
            function load_data_files() {
                var counting = 0;
                $.ajax({
                    type: "get", // GET or POST
                    url: 'Data_table_files', // Path to file
                    beforeSend: function () {                                // Before Ajax 

                    },
                    complete: function () {
                    },
                    success: function (response) {

                        $.each(response, function (index, value) {
                            counting++;
                            //  alert(response.toString());
                            //                            console.log(value.id + " " + value.title + " " + value.article + " " + value.date_modified);
                            var about_list_acknowledgment = '<li>'
                                    + ' <a href="FileDownloadDB?id=' + value.id.toString() + '"> <span class="fa fa-chain-broken"></span>'
                                    + '<strong>' + value.file_name + ' </strong>'
                                    + '  </a> </li>';
                            $("#basher_files").append(about_list_acknowledgment);
                        });
                    },
                    error: function (xhr) {
                    }
                });
            }
            $(document).ready(function () {
                load_data_files();
            });</script>




        <div id="tf-files">
            <div class="container"> <!-- Container -->
                <div class="section-title text-center center">
                    <h2> Check <strong>our files</strong></h2>
                    <div class="line">
                        <hr>
                    </div>
                    <div class="clearfix"></div>
                    <H3><em>The Following files  can be downloaded : </em></H3>
                </div>
                <div class="row">
                    <div class="col-md-12 col-md-offset-2">
                        <ul id="basher_files" class="about-list" style="column-count: 2;">
                        </ul>
                    </div>
                </div>
            </div>
            <br/><br/><br/>
        </div>

        <!-- Contact Section
        ==========================================-->

        <script>
            function load_data_acknowledgement() {
                $.ajax({
                    type: "get", // GET or POST
                    url: 'Data_table_acknowledgement', // Path to file
                    beforeSend: function () {                                // Before Ajax 

                    },
                    complete: function () {
                    },
                    success: function (response) {

                        $.each(response, function (index, value) {

                            //  alert(response.toString());
                            //                            console.log(value.id + " " + value.title + " " + value.article + " " + value.date_modified);
                            var about_list_acknowledgment = ' <li>'
                                    + ' <a href=" "><span class="fa fa-user"></span>'
                                    + '<strong>' + value.title + ' </strong> <br/>'
                                    + '<span>' + value.article + ' </span> </p>'
                                    + '  </a> </li>';
                            $("#basher_acknowledgement").append(about_list_acknowledgment);
                        });
                    },
                    error: function (xhr) {

                    }
                });
            }
            $(document).ready(function () {

                load_data_acknowledgement();
            });</script>



        <div id="tf-lastAcknowledge" class="text-center">
            <div class="container">
                <div class="section-title center">
                    <h2><strong>Acknowledgement</strong></h2>
                    <div class="line">
                        <hr>
                    </div>
                    <div class="clearfix"></div>
                    <H3><em>We would like to thank  to all muslim leaders who participate in every  peace process and the teaching of Islam by action,knowledge,wisdom, 
                            and fearing with God we also thank  all individual muslims who still doing good deeds for the sake of Allah (SwT). May Allah bless your family and accept your prayers..
                        </em></H3></small>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <ul  id="basher_acknowledgement" class="about-list" style="column-count: 1;">

                        </ul>
                        <div class="space"></div>
                    </div>
                    <div class="space"></div>
                </div>

            </div>
        </div>


        <nav id="footer">
            <div class="container">
                <div class="pull-left fnav">
                    <p>ALL RIGHTS RESERVED. COPYRIGHT © 2016. </p>
                </div>
            </div>
        </nav>


        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script type="text/javascript" src="bash/js/bootstrap.js"></script>
        <script type="text/javascript" src="bash/js/SmoothScroll.js"></script>
        <script type="text/javascript" src="bash/js/jquery.isotope.js"></script>

        <script src="bash/js/owl.carousel.js"></script>

        <!-- Javascripts
        ================================================== -->
        <script type="text/javascript" src="bash/js/main.js"></script>


    </div>
</body>
</html>

<script>

            $(document).ready(function () {


//        var imageUrl = "../img/01.jpg";
//        $('tf-home').css('background-image', 'url("' + imageUrl + '")');
//        $('tf-home').css('background-image', 'url(' + encodeURIComponent(imageUrl) + ')');

            });
            function click_me() {
//                                $('#myDiv').css('background', 'path/to/image.jpg');

                console.log("detect");
                var imageUrl = "/img/01.jpg";
//                                $('#tf-home').css('background', 'url("imageUrl' + imageUrl + '")');
//                                $('#tf-home').css('background-image', 'url(' + encodeURIComponent(imageUrl) + ')');
//                                $('#tf-home').css('background-image', 'url("../img/01.jpg")');
//                                 $('#tf-home').parent().css("background", "url('bash/img/01.jpg') no-repeat");
//                                  $(this).parent().css("backgroundImage", "url('../images/r-srchbg_white.png') no-repeat");
                $('#tf-home').css("background-image", "url(bash/img/01.jpg)");
//                                $('selector').css('backgroundImage', 'url(images/example.jpg)');
//                                $('selector').css({'background-image': 'url(..img/01.jpg)'});
//                                document.getElementById("tf-home").style.backgroundImage = "url('../img/01.jpg')";
//                                document.getElementById("tf-home").style.backgroundImage = imageUrl;
            }

</script>

<script>
    function load_data_gallery() {

        var counting = 0;
        console.log("success load load_data gallery");
        $.ajax({
            type: "get", // GET or POST
            url: 'Data_table_gallery', // Path to file
            cache: false,
            data: {
//                empno:${emp.empNo}
            },
            beforeSend: function () {                                // Before Ajax 

            },
            complete: function () {

                //$success.show();
            },
            success: function (response) {
// Show content
//                alert(response.toString());

//                $('#example1').DataTable().clear().draw();

                var text = "";
                var monthNames = ["January", "February", "March", "April", "May", "June",
                    "July", "August", "September", "October", "November", "December"
                ];
                var table_name = "gallery";
                $.each(response, function (index, value) {

                    var str = value.date_only_string;
                    var split = str.split("-");
                    var set_month_name = parseFloat(split[0]) - parseFloat("1");
                    var get_month_name = monthNames[set_month_name] + "-" + split[1];
                    var get_id = "";
                    console.log("HERE " + value.id + " " + value.title);
                    console.log("date_only_string " + value.date_only_string);
                    get_id = value.id;
                    console.log("  get_id = value.id; " + value.id);
                    counting++;
                    text = text + '<div class="col-sm-6 col-md-3 col-lg-3 ' + get_month_name + '">';
                    text = text + '<div class="portfolio-item">';

                    text = text + '<div class="hover-bg">';
//                    text = text + '<a href="#">';
                    text = text + '<div class="hover-text">';
                    text = text + '<h4>' + value.title + '</h4>';
                    text = text + '<h6>' + value.article + '</h6>';
                    text = text + ' </div>';
                    text = text + '<img src="Picture_viewGallery?id=' + get_id + '&set_table=gallery" class="img-responsive" alt="...">';
                    //          text = text + '<img src="Picture_view?id=' + get_id + '&set_table=' + table_name + '" alt = "User Image"  class="img-circle team-img" />';
//                    text = text + '</a>';
                    text = text + ' </div>';
                    text = text + ' </div>';
                    text = text + ' </div>';

                });
                document.getElementById("lightbox").innerHTML = text;
            },
            error: function (xhr) {
                console.log("error " + xhr.toString());
            }
        });
    }

    function load_filter_gallery() {

        var counting = 0;
        console.log("success load load_filter_gallery");
        $.ajax({
            type: "get", // GET or POST
            url: 'Draw_filter_by_gallery', // Path to file
            cache: false,
            data: {
//                empno:${emp.empNo}
            },
            beforeSend: function () {                                // Before Ajax 

            },
            complete: function () {

                //$success.show();
            },
            success: function (response) {
// Show content
//                alert(response.toString());

//                $('#example1').DataTable().clear().draw();
                var monthNames = ["January", "February", "March", "April", "May", "June",
                    "July", "August", "September", "October", "November", "December"
                ];

                var text = "";
                text = text + '<ul class="cat">';
                text = text + '<li class="pull-left"><h4>Filter by Type:</h4></li>';
                text = text + '<li class="pull-right">';
                text = text + '<ol class="type">';
                text = text + '<li><a href="#" data-filter="*" class="active">All</a></li>';
                $.each(response, function (index, value) {
                    var str = value.date_only_string;
                    var split = str.split("-");
                    var set_month_name = parseFloat(split[0]) - parseFloat("1");
                    var get_month_name = monthNames[set_month_name] + "-" + split[1];
                    counting++;




                    text = text + '<li><a href="#" data-filter=".' + get_month_name + '" class="active">' + get_month_name + '</a></li>';



                });
                text = text + '</ol>';
                text = text + '</li>';
                text = text + ' </ul>';
                text = text + ' <div class="clearfix"></div>';
                text = text + ' </div>';
                document.getElementById("draw_filter").innerHTML = text;
            },
            error: function (xhr) {
                console.log("error " + xhr.toString());
            }
        });
    }


//            $(document).ready(function () {
//
//
//
//
//
//                load_data_gallery();
//                load_filter_gallery();
//
//
//            });

</script>