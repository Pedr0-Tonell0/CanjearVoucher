using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;
using System.Net;
using System.Net.Mail;
namespace TP3_TONELLO
{
    public partial class PasoTres : System.Web.UI.Page
    {
        String ProductoElegido;
        String VoucherElegido;
        DateTime FechaValidacionVoucher = System.DateTime.Now;


        protected void Page_Load(object sender, EventArgs e)
        {
           
                ProductoElegido =(String)Request.QueryString["Producto"];
                VoucherElegido = (String)Session["Voucher"];
            
        }
       

        protected void Buscar_Click(object sender, EventArgs e)
        {
            ClienteNegocio clienteNegocio = new ClienteNegocio();
            Cliente cliente = new Cliente();
            cliente = null;

            if (DNI.Text == "")
            {
                Session["Error" + Session.SessionID] = "El DNI es obligatorio";
                Response.Redirect("PaginaError.aspx");

            }

            else
            {
                cliente = clienteNegocio.BuscarxDni(Convert.ToInt32(DNI.Text));
            }
            try
            {
                if (cliente != null)
                {
                    DNI.Text = cliente.DNI.ToString();
                    Nombre.Text = cliente.Nombre;
                    Apellido.Text = cliente.Apellido;
                    Email.Text = cliente.Email;
                    Direccion.Text = cliente.Direccion;
                    Ciudad.Text = cliente.Ciudad;
                    CP.Text = cliente.CodigoPostal;
                    Terminos.Enabled = true;

                }
                else if (cliente == null)
                {
                    DNI.Text = "";
                    Nombre.Text = "";
                    Apellido.Text =
                    Email.Text = "";
                    Direccion.Text = "";
                    Ciudad.Text = "";
                    CP.Text = "";
                }
            }

            catch (FormatException ex)
            {
                Session["Error" + Session.SessionID] = ex;
                Response.Redirect("PaginaError.aspx", false);
            }

            catch (Exception ex)
            {
                Session["Error" + Session.SessionID] = ex;
                Response.Redirect("PaginaError.aspx");
            }
        }


        protected void Participar_click(object sender, EventArgs e)
        {
            try
            {
                ClienteNegocio clienteNegocio = new ClienteNegocio();
                Cliente cliente = new Cliente();
                VoucherNegocio Voucher = new VoucherNegocio();
                cliente = null;
                cliente = clienteNegocio.BuscarxDni(Convert.ToInt32(DNI.Text));
                if (cliente == null && Terminos.Checked == true)
                {
                    cliente = new Cliente();
                    cliente.DNI = Convert.ToInt32(DNI.Text);
                    cliente.Nombre = Nombre.Text;
                    cliente.Apellido = Apellido.Text;
                    cliente.Email = Email.Text;
                    cliente.Direccion = Direccion.Text;
                    cliente.Ciudad = Ciudad.Text;
                    cliente.CodigoPostal = CP.Text;
                    cliente.FechaRegistro = System.DateTime.Now;
                    clienteNegocio.AgregarCliente(cliente);
                    Voucher.VoucherUsado(VoucherElegido,ProductoElegido,cliente.DNI,FechaValidacionVoucher);
                    Response.Redirect("OperacionExitosa.aspx", false);
                }
                else if (cliente != null && Terminos.Checked == true)
                {

                    cliente.DNI = Convert.ToInt32(DNI.Text);
                    cliente.Nombre = Nombre.Text;
                    cliente.Apellido = Apellido.Text;
                    cliente.Email = Email.Text;
                    cliente.Direccion = Direccion.Text;
                    cliente.Ciudad = Ciudad.Text;
                    cliente.CodigoPostal = CP.Text;
                    clienteNegocio.ModificarCliente(cliente);
                    Voucher.VoucherUsado(VoucherElegido, ProductoElegido, cliente.DNI, FechaValidacionVoucher);
                    Response.Redirect("OperacionExitosa.aspx", false);

                }
            }
            catch (Exception)
            {
                Session["Error" + Session.SessionID] = "Verifique que todos los campos esten correctos";
                    Response.Redirect("PaginaError.aspx");
            }
        }
    }
}


