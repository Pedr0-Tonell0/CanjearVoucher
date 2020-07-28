using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using Dominio;

namespace Negocio

{
    
    public class VoucherNegocio
    {
        
        public void VoucherUsado(string Codigo, String ProductoElegido, int DniCliente, DateTime Fecha)
        {
          
            AccesoDatos datos;
            datos = new AccesoDatos();
            try
            {
                datos.setearQuery("update Vouchers set Vouchers.Estado=1, Vouchers.IdCliente= '" + DniCliente + "', Vouchers.IdProducto='" + ProductoElegido + "', Vouchers.FechaRegistro = '" + Fecha + "' where Vouchers.CodigoVoucher = '" + Codigo + "'");
                datos.ejecutarAccion();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public Voucher Validar(string codigoVoucher)
        {
            Voucher aux = null;
            AccesoDatos datos;
            datos = new AccesoDatos();
            try
            {
                datos.setearQuery("select v.CodigoVoucher,v.Estado from Vouchers as v where v.CodigoVoucher = @CodigoVoucher");
                datos.agregarParametro("@CodigoVoucher", codigoVoucher);
                datos.ejecutarLector();
                while (datos.lector.Read())
                {

                    aux = new Voucher();
                    aux.CodigoVoucher = datos.lector.GetString(0);
                    aux.Estado = datos.lector.GetBoolean(1);
                }
                return aux;

            }
            catch (Exception excepcion)
            {
                throw excepcion;
            }

        }
      
      

    }
}

   
               
