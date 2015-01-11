<%@ Page Title="nramirez36 - Inicio del Sistema" Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="InicioSI.aspx.cs" Inherits="CMS.InicioSI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" runat="server">
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
        <li><a href="Novedades.aspx">Novedades</a></li>
        <li><a href="Contacto.aspx">Contacto</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpTituloPagina" runat="server">
    <h1><a href="index.aspx" id="logo">nramirez36 - <em>Sistema WEB</em></a></h1>
</asp:Content>