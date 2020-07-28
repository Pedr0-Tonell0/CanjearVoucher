<%@ Page Title="Voucher" Language="C#" MasterPageFile="~/PageMaster.Master" AutoEventWireup="true"CodeBehind="OperacionExitosa.aspx.cs" Inherits="TP3_TONELLO.OperacionExitosa" %>
<asp:Content ID="header" ContentPlaceHolderID="head" runat="server">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
 <link href="OperacionExitosa.css" rel="stylesheet" >

</asp:Content>

<asp:Content ID="voucher" ContentPlaceHolderID="cuerpo" runat="server">
    <div class="modal in" style="display: block;">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">Confirmación del sorteo</h4>
      </div>
      <div class="modal-body">
        <p>Ya se encuentra participando del sorteo, le hemos enviado un correo electrónico con el código del voucher usado y el producto elegido.</p>
        <div class="row">
            <div class="col-12-xs text-center">
                <a href="Index.aspx" class="btn btn-success btn-md">Ok</a>
            </div>
        </div>
      </div>
   
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
</asp:Content>

