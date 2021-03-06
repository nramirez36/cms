﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="nramirez36.Arcana_v2.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Arcana by HTML5 UP</title>
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
                    <li class="current"><a href="index.aspx">Home</a></li>
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
                    <li><a href="two-sidebar.aspx">Two Sidebar</a></li>
                    <li><a href="no-sidebar.aspx">No Sidebar</a></li>
                </ul>
            </nav>

        </div>

        <!-- Banner -->
        <section id="banner">
            <header>
                <h2>Arcana: <em>Aca va el slider con novedades</em></h2>
                <a href="#" class="button">Learn More</a>
                
            </header>
        </section>

        <!-- Highlights -->
        <section class="wrapper style1">
            <div class="container">
                <div class="row double">
                    <section class="4u">
                        <div class="box highlight">
                            <i class="icon major fa-paper-plane"></i>
                            <h3>This Is Important</h3>
                            <p>Estas serian puntos importantes para remarcar (se puede ver de hacer dinamico)</p>
                        </div>
                    </section>
                    <section class="4u">
                        <div class="box highlight">
                            <i class="icon major fa-pencil"></i>
                            <h3>Also Important</h3>
                            <p>Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.</p>
                        </div>
                    </section>
                    <section class="4u">
                        <div class="box highlight">
                            <i class="icon major fa-wrench"></i>
                            <h3>Probably Important</h3>
                            <p>Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.</p>
                        </div>
                    </section>
                </div>
            </div>
        </section>

        <!-- Gigantic Heading -->
        <section class="wrapper style2">
            <div class="container">
                <header class="major">
                    <h2>A gigantic heading you can use for whatever</h2>
                    <p>With a much smaller subtitle hanging out just below it</p>
                </header>
            </div>
        </section>

        <!-- Posts -->
        <section class="wrapper style1">
            <div class="container">
                <div class="row">
                    <section class="6u">
                        <div class="box post">
                            <a href="#" class="image left">
                                <img src="images/pic01.jpg" alt="" /></a>
                            <div class="inner">
                                <h3>The First Thing</h3>
                                <p>Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.</p>
                            </div>
                        </div>
                    </section>
                    <section class="6u">
                        <div class="box post">
                            <a href="#" class="image left">
                                <img src="images/pic02.jpg" alt="" /></a>
                            <div class="inner">
                                <h3>The Second Thing</h3>
                                <p>Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.</p>
                            </div>
                        </div>
                    </section>
                </div>
                <div class="row">
                    <section class="6u">
                        <div class="box post">
                            <a href="#" class="image left">
                                <img src="images/pic03.jpg" alt="" /></a>
                            <div class="inner">
                                <h3>The Third Thing</h3>
                                <p>Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.</p>
                            </div>
                        </div>
                    </section>
                    <section class="6u">
                        <div class="box post">
                            <a href="#" class="image left">
                                <img src="images/pic04.jpg" alt="" /></a>
                            <div class="inner">
                                <h3>The Fourth Thing</h3>
                                <p>Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.</p>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </section>

        <!-- CTA -->
        <section id="cta" class="wrapper style3">
            <div class="container">
                <header>
                    <h2>Are you ready to continue your quest?</h2>
                    <a href="#" class="button">Insert Coin</a>
                </header>
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
