﻿<%@ Page Title="TODO SALUD - Inicio" Language="C#" MasterPageFile="~/CMS.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="CMS.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpTituloPagina" runat="server">
    <h1><a href="index.aspx" id="logo">Bienvenido a <em>TODO SALUD </em></a></h1>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpNav" runat="server">
    <ul>
        <li class="current"><a href="index.aspx">Inicio</a></li>
        <li>
            <a href="Nosotros.aspx">Nosotros</a>
            <ul>
                <li><a href="QuienesSomos.aspx">Quienes Somos</a></li>
                <li><a href="Historia.aspx">Nuesta Historia</a></li>
                <li><a href="Vision.aspx">Visión, Misión y Valores</a></li>
                <li><a href="Ubicacion.aspx">Ubicación</a></li>
            </ul>
        </li>
        <li><a href="Pacientes.aspx">Pacientes</a></li>
        <li><a href="Prestaciones.aspx">Prestaciones</a></li>
        <li><a href="Novedades.aspx">Novedades</a></li>
        <li><a href="Contacto.aspx">Contacto</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cpSlider" runat="server">
    <section id="banner">
        <header>
            <h2>Arcana: <em>Aca va el slider con novedades o con imagenes relacionadas</em></h2>
            <a href="#" class="button">Learn More</a>
        </header>
    </section>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cpHighlights" runat="server">
    <section class="wrapper style1">
        <div class="container">
            <div class="row double">
                <section class="4u">
                    <div class="box highlight">
                        <i class="icon major fa-paper-plane"></i>
                        <h3>Quienes Somos</h3>
                        <p>Estas serian puntos importantes para remarcar (se puede ver de hacer dinamico).</p>
                    </div>
                </section>
                <section class="4u">
                    <div class="box highlight">
                        <i class="icon major fa-pencil"></i>
                        <h3>Especialidades</h3>
                        <p>Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.</p>
                    </div>
                </section>
                <section class="4u">
                    <div class="box highlight">
                        <i class="icon major fa-wrench"></i>
                        <h3>Planes</h3>
                        <p>Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.</p>
                    </div>
                </section>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ContentPlaceHolderID="cpNovedades" ID="Content8" runat="server">
    <section class="wrapper style1">
        <div class="container">
            <div class="row">
                <section class="6u">
                    <div class="box post">
                        <a href="#" class="image left">
                            <img src="images/pic01.jpg" alt="" /></a>
                        <div class="inner">
                            <h3>Novedades sobre salud</h3>
                            <p>Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.</p>
                        </div>
                    </div>
                </section>
                <section class="6u">
                    <div class="box post">
                        <a href="#" class="image left">
                            <img src="images/pic02.jpg" alt="" /></a>
                        <div class="inner">
                            <h3>Calendario Vacunas</h3>
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpContenido" runat="server">
</asp:Content>
