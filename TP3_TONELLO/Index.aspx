<%@ Page Title="Voucher" Language="C#" MasterPageFile="~/PageMaster.Master" AutoEventWireup="true"CodeBehind="Index.aspx.cs" Inherits="TP3_TONELLO.Index" %>
<asp:Content ID="header" ContentPlaceHolderID="head" runat="server">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <link rel="stylesheet" href="Index.css">
        </asp:Content>
<asp:Content ID="Index" ContentPlaceHolderID="cuerpo" runat="server">

<div class="thankyou-page">
    <div class="_header">
        <div class="logo">
            <img src="https://codexcourier.com/images/banner-logo.png" alt="">
        </div>
    </div>
    <div class="_body">
        <div class="_box">
            <h2>
              <center><strong>Ingresá el código del voucher</strong> </center>  
            </h2>
                                 <asp:TextBox ID="txtVoucher"  runat="server" style="margin-left:385px;margin-top:20px;"></asp:TextBox>

         <div class="_footer">
        <asp:Button ID="btnSiguiente" runat="server"   class="btn" Text="Siguiente" OnClick="btnSiguiente_Click" />

    </div>
        </div>
    </div>
</div>
    </asp:Content>