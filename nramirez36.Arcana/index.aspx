<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="nramirez36.Arcana.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <link href="css/font.css" rel="stylesheet" />
    <script src="js/jquery.min.js"></script>
    <script src="js/config.js"></script>
    <script src="js/skel.min.js"></script>
    <script src="js/skel-panels.min.js"></script>    
    <noscript>
        <link rel="stylesheet" href="css/skel-noscript.css" />
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/style-desktop.css" />
    </noscript>
    <!--[if lte IE 9]><link rel="stylesheet" href="css/style-ie9.css" /><![endif]-->
    <!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
    <title>Arcana - Pagina Principal</title>
</head>
<body>
    <form id="form1" runat="server">
        <!--Header-->
        <div id="header-wrapper">
            <header class="container" id="site-header">
                <div class="row">
                    <div class="12u">
                        <div id="logo">
                            <h1>Arcana</h1>
                        </div>
                        <nav id="nav">
                            <ul>
                                <li class="current_page_item"><a href="index.aspx">Inicio</a></li>
                                <li><a href="threecolumn1.aspx">Tres Columnas #1</a></li>
                                <li><a href="threecolumn2.aspx">Tres Columnas #2</a></li>
                                <li><a href="twocolumn1.aspx">Dos Columnas #1</a></li>
                                <li><a href="twocolumn2.aspx">Dos Columnas #2</a></li>
                                <li><a href="onecolumn.aspx">Una Columna</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </header>
        </div>
        <!--Main-->
        <div id="main-wrapper">
            <div class="container">
                <!--Banner -->
                <div class="row">
                    <div class="12u">
                        <div id="banner">
                            <a href="#">
                                <img src="images/banner.jpg" alt="" /></a>
                            <div class="caption">
                                <span><strong>Medisys</strong>: Sitio realizado en ASP.NET y HTML5</span>
                                <a href="#" class="button">Encuentra mas!</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Features -->
                <div class="row">
                    <div class="3u">
                        <section class="first">
                            <h2>Welcome to Arcana</h2>
                            <p>
                                This is <strong>Arcana</strong>, a fully responsive HTML5 site template designed by <a href="http://n33.co">n33</a> and released for free by <a href="http://html5up.net">HTML5 UP</a> It features
									a simple yet elegant design, solid HTML5 and CSS3 code, and full responsive support for desktop, tablet, and mobile displays.
                            </p>
                        </section>
                    </div>
                    <div class="3u">
                        <section>
                            <h2>Responsive? Really?</h2>
                            <p>
                                Yup. This site template is fully responsive, meaning it'll look great on desktop (widescreen and standard), tablet and mobile device
									displays. Try it for yourself: simply resize your browser window to see how stuff shifts around and changes.
                            </p>
                        </section>
                    </div>
                    <div class="3u">
                        <section>
                            <h2>The CCA 3.0 License</h2>
                            <p>
                                <strong>Arcana</strong> is released for free under the <a href="http://html5up.net/license">Creative Commons Attribution 3.0 license</a>, which means you can use it for
									pretty much any personal or commercial use. The catch? Just give us credit wherever you use it (oh, and tell your friends about us, though
									that's not in the license :)
                            </p>
                        </section>
                    </div>
                    <div class="3u">
                        <section class="last">
                            <h2>About HTML5 UP</h2>
                            <p>
                                HTML5 UP is a small side project by AJ (aka n33) to practice working with HTML5 and responsive design techniques. You can find
									more cool designs at <a href="http://html5up.net">html5up.net</a> or follow us on Twitter (<a href="http://twitter.com/n33co">@n33co</a>
                            ) for new release announcements and other cool stuff.
                        </section>
                    </div>
                </div>
                <!--Divider-->
                <div class="row">
                    <div class="12u">
                        <div class="divider divider-top"></div>
                    </div>
                </div>
                <!-- Highlight Box -->
                <div class="row">
                    <div class="12u">
                        <div class="highlight-box">
                            <h2>Amet lorem varius tempus consequat lorem?</h2>
                            <span>(tempus aliquam lorem blandit etiam suspendisse dapibus)</span>
                        </div>
                    </div>
                </div>
                <!-- Divider -->
                <div class="row">
                    <div class="12u">
                        <div class="divider divider-bottom"></div>
                    </div>
                </div>
                <!-- Thumbnails -->
                <div class="row">
                    <div class="12u">
                        <section class="thumbnails first last">
                            <div>
                                <div class="row">
                                    <div class="4u">
                                        <div class="thumbnail first">
                                            <a href="#">
                                                <img src="images/pic1.jpg" alt="" /></a>
                                            <blockquote>Duis neque nisi, dapibus sed mattis et quis, rutrum accumsan sed. Suspendisse eu varius nibh. Suspendapibus sed mattis quis.</blockquote>
                                            <cite><strong>Jane Doe</strong> Lorem Ipsum Dolore</cite>
                                        </div>
                                    </div>
                                    <div class="4u">
                                        <div class="thumbnail">
                                            <a href="#">
                                                <img src="images/pic2.jpg" alt="" /></a>
                                            <blockquote>Duis neque nisi, dapibus sed mattis et quis, rutrum accumsan sed. Suspendisse eu varius nibh. Suspenddapibus sed mattis quis.</blockquote>
                                            <cite><strong>John Doe</strong> Lorem Ipsum Dolore</cite>
                                        </div>
                                    </div>
                                    <div class="4u">
                                        <div class="thumbnail">
                                            <a href="#">
                                                <img src="images/pic3.jpg" alt="" /></a>
                                            <blockquote>Duis neque nisi, dapibus sed mattis et quis, rutrum accumsan sed. Suspendisse eu varius nibh. Suspenddapibus sed mattis quis.</blockquote>
                                            <cite><strong>Jane Doe</strong> Lorem Ipsum Dolore</cite>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="12u">
                                        <div class="divider"></div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="4u">
                                        <div class="thumbnail">
                                            <a href="#">
                                                <img src="images/pic4.jpg" alt="" /></a>
                                            <blockquote>Duis neque nisi, dapibus sed mattis et quis, rutrum accumsan sed. Suspendisse eu varius nibh. Suspenddapibus sed mattis quis.</blockquote>
                                            <cite><strong>John Doe</strong> Lorem Ipsum Dolore</cite>
                                        </div>
                                    </div>
                                    <div class="4u">
                                        <div class="thumbnail">
                                            <a href="#">
                                                <img src="images/pic5.jpg" alt="" /></a>
                                            <blockquote>Duis neque nisi, dapibus sed mattis et quis, rutrum accumsan sed. Suspendisse eu varius nibh. Suspenddapibus sed mattis quis.</blockquote>
                                            <cite><strong>Jane Doe</strong> Lorem Ipsum Dolore</cite>
                                        </div>
                                    </div>
                                    <div class="4u">
                                        <div class="thumbnail last">
                                            <a href="#">
                                                <img src="images/pic6.jpg" alt="" /></a>
                                            <blockquote>Duis neque nisi, dapibus sed mattis et quis, rutrum accumsan sed. Suspendisse eu varius nibh. Suspenddapibus sed mattis quis.</blockquote>
                                            <cite><strong>John Doe</strong> Lorem Ipsum Dolore</cite>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
                <!-- Divider -->
                <div class="row">
                    <div class="12u">
                        <div class="divider divider-top"></div>
                    </div>
                </div>
                <!-- CTA Box -->
                <div class="row">
                    <div class="12u">
                        <div class="cta-box">
                            <span>Amet lorem varius tempus consequat lorem?</span>
                            <a href="#" class="button">Ipsum Consequat</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer -->
        <div id="footer-wrapper">
            <footer class="container" id="site-footer">
                <div class="row">
                    <div class="3u">
                        <section class="first">
                            <h2>Ipsum et phasellus</h2>
                            <ul class="link-list">
                                <li><a href="#">Mattis et quis rutrum sed accumsan</a></li>
                                <li><a href="#">Suspendisse amet varius nibh</a></li>
                                <li><a href="#">Suspenddapibus amet mattis quis</a></li>
                                <li><a href="#">Rutrum accumsan eu varius</a></li>
                                <li><a href="#">Nibh lorem sed dolore et ipsum.</a></li>
                            </ul>
                        </section>
                    </div>
                    <div class="3u">
                        <section>
                            <h2>Lorem mattis dolor</h2>
                            <ul class="link-list">
                                <li><a href="#">Duis neque nisi dapibus sed</a></li>
                                <li><a href="#">Suspenddapibus amet mattis quis</a></li>
                                <li><a href="#">Rutrum accumsan eu varius</a></li>
                                <li><a href="#">Nibh lorem sed dolore et ipsum.</a></li>
                                <li><a href="#">Mattis et quis rutrum sed accumsan</a></li>
                            </ul>
                        </section>
                    </div>
                    <div class="3u">
                        <section>
                            <h2>Mattis quis tempus</h2>
                            <ul class="link-list">
                                <li><a href="#">Suspendisse amet varius nibh</a></li>
                                <li><a href="#">Suspenddapibus amet mattis quis</a></li>
                                <li><a href="#">Rutrum accumsan eu varius</a></li>
                                <li><a href="#">Nibh lorem sed dolore et ipsum.</a></li>
                                <li><a href="#">Duis neque nisi dapibus sed</a></li>
                            </ul>
                        </section>
                    </div>
                    <div class="3u">
                        <section class="last">
                            <h2>Odio et phasellus</h2>
                            <ul class="link-list">
                                <li><a href="#">Rutrum accumsan eu varius</a></li>
                                <li><a href="#">Nibh lorem sed dolore et ipsum.</a></li>
                                <li><a href="#">Duis neque nisi dapibus sed</a></li>
                                <li><a href="#">Mattis et quis rutrum sed accumsan</a></li>
                                <li><a href="#">Suspendisse amet varius nibh</a></li>
                            </ul>
                        </section>
                    </div>
                </div>
                <div class="row">
                    <div class="12u">
                        <div class="divider"></div>
                    </div>
                </div>
                <div class="row">
                    <div class="12u">
                        <div id="copyright">
                            &copy; Untitled. All rights reserved. | Design: <a href="http://www.facebook.com/nramirez36">nramirez</a> | Images: <a href="http://fotogrph.com">fotogrph</a>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </form>
</body>
</html>
