<%@ Page Title="Voucher" Language="C#" MasterPageFile="~/PageMaster.Master" AutoEventWireup="true"  CodeBehind="PaginaError.aspx.cs" Inherits="TP3_TONELLO.PaginaErrorAlta" %>
<asp:Content ID="header" ContentPlaceHolderID="head" runat="server">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link href="PaginaError.css" rel="stylesheet">

</asp:Content>

<asp:Content ID="voucher" ContentPlaceHolderID="cuerpo" runat="server">        
      
    
    <div class="p-3 mb-2 bg-dark text-white">
        <h3 class="h4 p-3 mb-2 bg-dark text-white">Ha surgido un error</h3>
    </div>

       <div class="four-z-four bg_color">
    <div class="four-z-top">
        <div class="four_z">
         <div class="four_z_three">
         </div>
        </div>         
    </div>
</div>


    
       <div class="modal in" style="display: block;">
  <div class="modal-dialog" style="margin-top:90px;margin-left:-300px;">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">ERROR</h4>
      </div>
      <div class="modal-body">
                              <p><% = Session["Error" + Session.SessionID] %></p>
            <div class="row">
            <div class="col-12-xs text-center">
      <input type="button" style="margin-left:200px; margin-top:2px;"  onclick="history.back()" class="btn btn-success btn-md" value="Volver">
            </div>
        </div>
 
      </div>
   
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

 
</asp:Content>
