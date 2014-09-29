﻿<%@ Page Title="TOTAL SALUD - Novedades" Language="C#" MasterPageFile="~/CMS.Master" AutoEventWireup="true" CodeBehind="Novedades.aspx.cs" Inherits="CMS.Novedades" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpTituloPagina" runat="server">
    <h1><a href="Novedades.aspx" id="logo">TOTAL SALUD - <em>Novedades</em></a></h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpNav" runat="server">
    <ul>
        <li><a href="index.aspx">Inicio</a></li>
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
        <li><a href="ObraSocial.aspx">Obra Social</a></li>
        <li class="current"><a href="Novedades.aspx">Novedades</a></li>
        <li><a href="Contacto.aspx">Contacto</a></li>

        <%--<li><a href="left-sidebar.aspx">Pacientes</a></li>
        <li><a href="right-sidebar.aspx">Prestaciones</a></li>
        <li><a href="two-sidebar.aspx">Obra Social</a></li>
        <li><a href="no-sidebar.aspx">Novedades</a></li>
        <li><a href="no-sidebar.aspx">Contacto</a></li>--%>
        <%--<li>
            <a href="">Acceso al Sistema</a>
            <ul>
                <li><a href="#">Socios</a></li>
                <li><a href="#">Empleados</a></li>
            </ul>
        </li>--%>
    </ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpSlider" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cpHighlights" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>