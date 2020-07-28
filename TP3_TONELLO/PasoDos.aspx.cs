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
    public partial class PasoDos : System.Web.UI.Page
    {

        public List<Producto> ListaProducto { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                ProductoNegocio negocio = new ProductoNegocio();
                ListaProducto = negocio.listar();

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

      
    }
}