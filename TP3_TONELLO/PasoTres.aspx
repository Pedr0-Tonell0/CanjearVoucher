<%@ Page Title="Voucher" Language="C#" MasterPageFile="~/PageMaster.Master" AutoEventWireup="true" CodeBehind="PasoTres.aspx.cs" Inherits="TP3_TONELLO.PasoTres" %>
<asp:Content ID="header" ContentPlaceHolderID="head" runat="server">
       <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
          <script src="Validaciones.js"></script>
           <link href="PasoTres.css" rel="stylesheet">


</asp:Content>

<asp:Content ID="voucher" ContentPlaceHolderID="cuerpo" runat="server">

    <div class="container">
        <center>

    <div class="form-group col-md-4">
                <h2  style="margin-top: 20px;font-family: 'Paytone One', sans-serif;font-weight:bold;">Ingresá tus datos</h2>
            </div>

        <div class="form-row">
            <div class="form-group col-md-3">
                <asp:Label Text="DNI" ID="LblDNI" ClientIDMode="Static" runat="server" CssClass="control-label " />
                <asp:TextBox runat="server" onfocus="Seleccionar(this.id)" onkeyup="ValidarDNI()"  onKeyPress="return SoloInt(event)" ClientIDMode="Static" Style="margin-top: 10px;" MaxLength="8" ID="DNI" CssClass="form-control " />
            </div>
            <div>
                <asp:Button Text="Buscar" ID="Buscar"  ClientIDMode="Static" class="btn btn-dark" Style="margin-top: 35px; margin-left: 10px;" runat="server" OnClientClick="ValidarVacio()" OnClick="Buscar_Click" />
            </div>
        </div>

        <p></p>
        <div class="form-row ">
            <div class="form-group col-md-3">
                <asp:Label Text="Nombre" ID="LblNombre" ClientIDMode="Static" runat="server" CssClass="control-label " />
                <asp:TextBox runat="server" onkeypress="return SoloString(event)" onkeyup="ValidarVacio(this.id)" onfocus="Seleccionar(this.id)" Style="margin-top: 10px;" ClientIDMode="Static" ID="Nombre" CssClass="form-control " />
            </div>
            <div class="form-group col-md-3">
                <asp:Label Text="Apellido" ID="LblApellido" ClientIDMode="Static" runat="server" CssClass="control-label " />
                <asp:TextBox runat="server" onkeypress="return SoloString(event)" onkeyup="ValidarVacio(this.id)" onfocus="Seleccionar(this.id)"  Style="margin-top: 10px;" ClientIDMode="Static" ID="Apellido" CssClass="form-control " />
            </div>


            <div class="form-group col-md-4">
                <asp:Label Text="Email" ID="LblEmail" runat="server" ClientIDMode="Static" CssClass="control-label " />
                <div class="input-group" style="margin-top: 10px;">
                    <div class="input-group-prepend">
                        <div class="input-group-text">@</div>
                    </div>
                    <asp:TextBox runat="server" onkeyup="ValidarEmail()"  onfocus="Seleccionar(this.id)" ClientIDMode="Static" ID="Email" CssClass="form-control " />
                </div>
            </div>
        </div>


        <p></p>
        <div class="form-row ">
            <div class="form-group col-md-5">
                <asp:Label Text="Dirección" ID="LblDireccion" ClientIDMode="Static" runat="server" CssClass="control-label " />
                <asp:TextBox runat="server" ID="Direccion" onkeyup="ValidarVacio(this.id)" onfocus="Seleccionar(this.id)"  Style="margin-top: 10px;"  ClientIDMode="Static" CssClass="form-control " />
            </div>
            <div class="form-group col-md-">
                <asp:Label Text="Ciudad" ID="LblCiudad" runat="server" ClientIDMode="Static" CssClass="control-label " />
                <asp:TextBox runat="server"  ID="Ciudad"  onkeyup="ValidarVacio(this.id)" onfocus="Seleccionar(this.id)"  Style="margin-top: 10px;" ClientIDMode="Static" CssClass="form-control " />

            </div>
            <div class="form-group col-md-3">
                <asp:Label Text="CP" ID="LblCP" runat="server" ClientIDMode="Static" CssClass="control-label " />
                <asp:TextBox runat="server" onKeyPress="return SoloInt(event)" onkeyup="ValidarVacio(this.id)" Style="margin-top: 10px;" ClientIDMode="Static" ID="CP" CssClass="form-control " />
            </div>
        </div>


        <p></p>
        <div>
            <p class="font-weight-bold">
       
                <asp:CheckBox Text="" ClientIDMode="Static" ID="Terminos" runat="server" />
                                  Acepto los términos y condiciones
            </p>
        </div>


        <p></p>
        <p></p>
        <div>

            <asp:Button Text="Participar"  class="btn btn-dark"  ClientIDMode="Static" ID="Participar" runat="server"  OnClick="Participar_click" />
        </div>

    </div>

    </center>
</asp:Content>

