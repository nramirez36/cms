﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="two-sidebar.aspx.cs" Inherits="nramirez36.Arcana_v2.two_sidebar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Two Sidebar - Arcana by HTML5 UP</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.dropotron.min.js"></script>
    <script src="js/skel.min.js"></script>
    <script src="js/skel-layers.min.js"></script>
    <script src="js/init.js"></script>
    <noscript>
			<link rel="stylesheet" href="css/skel.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-wide.css" />
		</noscript>
    <!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
</head>
<body>
    <form id="form1" runat="server">
        <!-- Header -->
        <div id="header">

            <!-- Logo -->
            <h1><a href="index.aspx" id="logo">Arcana <em>by HTML5 UP</em></a></h1>

            <!-- Nav -->
            <nav id="nav">
                <ul>
                    <li><a href="index.aspx">Home</a></li>
                    <li>
                        <a href="">Dropdown</a>
                        <ul>
                            <li><a href="#">Lorem dolor</a></li>
                            <li><a href="#">Magna phasellus</a></li>
                            <li><a href="#">Etiam sed tempus</a></li>
                            <li>
                                <a href="">Submenu</a>
                                <ul>
                                    <li><a href="#">Lorem dolor</a></li>
                                    <li><a href="#">Phasellus magna</a></li>
                                    <li><a href="#">Magna phasellus</a></li>
                                    <li><a href="#">Etiam nisl</a></li>
                                    <li><a href="#">Veroeros feugiat</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Veroeros feugiat</a></li>
                        </ul>
                    </li>
                    <li><a href="left-sidebar.aspx">Left Sidebar</a></li>
                    <li><a href="right-sidebar.aspx">Right Sidebar</a></li>
                    <li class="current"><a href="two-sidebar.aspx">Two Sidebar</a></li>
                    <li><a href="no-sidebar.aspx">No Sidebar</a></li>
                </ul>
            </nav>

        </div>

        <!-- Main -->
        <section class="wrapper style1">
            <div class="container">
                <div class="row double">
                    <div class="3u">
                        <div id="sidebar1">

                            <!-- Sidebar 1 -->

                            <section>
                                <h3>Just a Subheading</h3>
                                <p>
                                    Phasellus quam turpis, feugiat sit amet ornare in, hendrerit in lectus. 
										Praesent semper mod quis eget mi. Etiam eu ante risus. Aliquam erat volutpat. 
										Aliquam luctus et mattis lectus sit amet pulvinar. Nam turpis et nisi etiam.
                                </p>
                                <footer>
                                    <a href="#" class="button">Continue Reading</a>
                                </footer>
                            </section>

                            <section>
                                <h3>Another Subheading</h3>
                                <ul class="links">
                                    <li><a href="#">Amet turpis, feugiat sit amet</a></li>
                                    <li><a href="#">Ornare in hendrerit lectus</a></li>
                                    <li><a href="#">Semper mod quis eget dolore</a></li>
                                    <li><a href="#">Consequat lorem phasellus</a></li>
                                    <li><a href="#">Amet turpis feugiat amet</a></li>
                                    <li><a href="#">Semper mod quisturpis nisi</a></li>
                                </ul>
                                <footer>
                                    <a href="#" class="button">More Random Links</a>
                                </footer>
                            </section>

                        </div>
                    </div>
                    <div class="6u skel-cell-important">
                        <div id="content">

                            <!-- Content -->

                            <article>
                                <header>
                                    <h2>Two Sidebar</h2>
                                    <p>Yup. Two sidebars at the same time.</p>
                                </header>

                                <span class="image featured">
                                    <img src="images/banner.jpg" alt="" /></span>

                                <p>
                                    Phasellus quam turpis, feugiat sit amet ornare in, hendrerit in lectus. 
										Praesent semper mod quis eget mi. Etiam eu ante risus. Aliquam erat volutpat. 
										Aliquam luctus et mattis lectus sit amet pulvinar. Nam turpis nisi 
										consequat etiam lorem ipsum dolor sit amet nullam.
                                </p>

                                <h3>And Yet Another Subheading</h3>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ac quam risus, at tempus 
										justo. Sed dictum rutrum massa eu volutpat. Quisque vitae hendrerit sem. Pellentesque lorem felis, 
										ultricies a bibendum id, bibendum sit amet nisl. Mauris et lorem quam. Maecenas rutrum imperdiet 
										rhoncus dui quis euismod. Maecenas lorem tellus, congue et condimentum ac, ullamcorper non sapien. 
										Donec sagittis massa et leo semper a scelerisque metus faucibus. Morbi congue mattis mi. 
										Phasellus sed nisl vitae risus tristique volutpat. Cras rutrum commodo luctus.
                                </p>

                                <p>
                                    Phasellus odio risus, faucibus et viverra vitae, eleifend ac purus. Praesent mattis, enim 
										quis hendrerit porttitor, sapien tortor viverra magna, sit amet rhoncus nisl lacus nec arcu. 
										Maecenas tortor mauris, consectetur pellentesque dapibus eget, tincidunt vitae arcu. 
										Vestibulum purus augue, tincidunt sit amet iaculis id, porta eu purus.
                                </p>
                            </article>

                        </div>
                    </div>
                    <div class="3u">
                        <div id="sidebar2">

                            <!-- Sidebar 2 -->

                            <section>
                                <h3>Another Subheading</h3>
                                <ul class="links">
                                    <li><a href="#">Amet turpis, feugiat sit amet</a></li>
                                    <li><a href="#">Ornare in hendrerit lectus</a></li>
                                    <li><a href="#">Semper mod quis eget dolore</a></li>
                                    <li><a href="#">Consequat lorem phasellus</a></li>
                                    <li><a href="#">Amet turpis feugiat amet</a></li>
                                    <li><a href="#">Semper mod quisturpis nisi</a></li>
                                </ul>
                                <footer>
                                    <a href="#" class="button">More Random Links</a>
                                </footer>
                            </section>

                            <section>
                                <h3>Just a Subheading</h3>
                                <p>
                                    Phasellus quam turpis, feugiat sit amet ornare in, hendrerit in lectus. 
										Praesent semper mod quis eget mi. Etiam eu ante risus. Aliquam erat volutpat. 
										Aliquam luctus et mattis lectus sit amet pulvinar. Nam turpis et nisi etiam.
                                </p>
                                <footer>
                                    <a href="#" class="button">Continue Reading</a>
                                </footer>
                            </section>

                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Footer -->
        <div id="footer">
            <div class="container">
                <div class="row ">
                    <div class="6u">
                        <div class="row collapse-at-2">
                            <section class="6u">
                                <h3>Links to Stuff</h3>
                                <ul class="links">
                                    <li><a href="#">Mattis et quis rutrum</a></li>
                                    <li><a href="#">Suspendisse amet varius</a></li>
                                    <li><a href="#">Sed et dapibus quis</a></li>
                                    <li><a href="#">Rutrum accumsan dolor</a></li>
                                    <li><a href="#">Mattis rutrum accumsan</a></li>
                                    <li><a href="#">Suspendisse varius nibh</a></li>
                                    <li><a href="#">Sed et dapibus mattis</a></li>
                                </ul>
                            </section>
                            <section class="6u">
                                <h3>More Links to Stuff</h3>
                                <ul class="links">
                                    <li><a href="#">Duis neque nisi dapibus</a></li>
                                    <li><a href="#">Sed et dapibus quis</a></li>
                                    <li><a href="#">Rutrum accumsan sed</a></li>
                                    <li><a href="#">Mattis et sed accumsan</a></li>
                                    <li><a href="#">Duis neque nisi sed</a></li>
                                    <li><a href="#">Sed et dapibus quis</a></li>
                                    <li><a href="#">Rutrum amet varius</a></li>
                                </ul>
                            </section>
                        </div>
                    </div>
                    <section class="6u">
                        <h3>Get In Touch</h3>
                        <form>
                            <div class="row half collapse-at-2">
                                <div class="6u">
                                    <input type="text" name="name" id="name" placeholder="Name" />
                                </div>
                                <div class="6u">
                                    <input type="email" name="email" id="email" placeholder="Email" />
                                </div>
                            </div>
                            <div class="row half">
                                <div class="12u">
                                    <textarea name="message" id="message" placeholder="Message" rows="5"></textarea>
                                </div>
                            </div>
                            <div class="row half">
                                <div class="12u">
                                    <ul class="actions">
                                        <li>
                                            <input type="submit" class="button alt" value="Send Message" /></li>
                                    </ul>
                                </div>
                            </div>
                        </form>
                    </section>
                </div>
            </div>

            <!-- Icons -->
            <ul class="icons">
                <li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
                <li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
                <li><a href="#" class="icon fa-github"><span class="label">GitHub</span></a></li>
                <li><a href="#" class="icon fa-linkedin"><span class="label">LinkedIn</span></a></li>
                <li><a href="#" class="icon fa-google-plus"><span class="label">Google+</span></a></li>
            </ul>

            <!-- Copyright -->
            <div class="copyright">
                <ul class="menu">
                    <li>&copy; Untitled. All rights reserved</li>
                    <li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
                </ul>
            </div>

        </div>

    </form>
</body>
</html>
