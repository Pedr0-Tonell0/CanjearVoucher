using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Dominio;

namespace TP3_TONELLO
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSiguiente_Click(object sender, EventArgs e)
        {
            String VoucherNuevo;
            VoucherNuevo = txtVoucher.Text;
            Voucher Voucher = new Voucher();
            VoucherNegocio vouchernegocio = new VoucherNegocio();
            Voucher = vouchernegocio.Validar(VoucherNuevo);

            try
            {

                if (Voucher == null)
                {
                    Session["Error" + Session.SessionID] = "Tiene que ingresar un voucher correcto.";
                    Response.Redirect("PaginaError.aspx");
                }

                if (Voucher != null)
                {
                    if (Voucher.Estado == false)
                    {
                        Session["Voucher"] = VoucherNuevo;
                        Response.Redirect("PasoDos.aspx");
                    }
                    else
                    {
                        Session["Error" + Session.SessionID] = "El voucher ya se encuentra en uso.";
                        Response.Redirect("PaginaError.aspx");
                    }
                }
            }
            catch (Exception ex)
            {

                throw ex;

            }
        }
    }
    }
