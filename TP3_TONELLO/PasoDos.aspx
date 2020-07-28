<%@ Page Title="Voucher" Language="C#" MasterPageFile="~/PageMaster.Master" AutoEventWireup="true" CodeBehind="PasoDos.aspx.cs" Inherits="TP3_TONELLO.PasoDos" %>
<asp:Content ID="header" ContentPlaceHolderID="head" runat="server">

  <link rel="stylesheet" href="PasoDos.css">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="https://fonts.googleapis.com/css?family=Paytone+One" rel="stylesheet">
<script src="https://use.fontawesome.com/a152d19b3e.js"></script>

        </asp:Content>
<asp:Content ID="PasoDos" ContentPlaceHolderID="cuerpo" runat="server">
  <section id="service" class="social-section">
      <center><h2 style=" font-family: 'Paytone One', sans-serif;">Elegí tu premio</h2></center>
    <div class="container" >
                   

    <div class="row" style="padding-top:70px" id="tabs">
             <% foreach (var item in ListaProducto)
            { %>
        
   <div class="col-md-4 col-sm-4 col-xs-4 hover" >
        <img  src="<% = item.Imagen%>" class="img"/>
   <h4 style="font-weight: bold; "> <% = item.Nombre %><br /></h4>
       <h5 style="font-weight: bold;">  <% = item.Descripcion %> <br/></h5>  
                <a style="color:navy;"   href="PasoTres.aspx?Producto=<%= item.Id.ToString()%>" >Seleccionar</a>
      </div>

  <% } %>

           </asp:Content>       