using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;
using System.Net;
using System.Net.Mail;
using System.Text.RegularExpressions;


namespace Negocio
{
    public class ClienteNegocio
    {
       
        public void ModificarCliente(Cliente cliente)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearQuery("update Clientes set Nombre = @Nombre where DNI = @DNI;update Clientes set Apellido = @Apellido where DNI = @DNI;update Clientes set Email = @Email where DNI = @DNI;update Clientes set Direccion = @Direccion where DNI = @DNI;update Clientes set Ciudad = @Ciudad where DNI = @DNI;update Clientes set CodigoPostal = @CodigoPostal where DNI = @DNI;");
         
                datos.agregarParametro("@DNI", cliente.DNI);
                datos.agregarParametro("@Nombre", cliente.Nombre);
                datos.agregarParametro("@Apellido", cliente.Apellido);
                datos.agregarParametro("@Email", cliente.Email);
                datos.agregarParametro("@Direccion", cliente.Direccion);
                datos.agregarParametro("@CodigoPostal", cliente.CodigoPostal);
                datos.agregarParametro("@Ciudad", cliente.Ciudad);
                datos.ejecutarAccion();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public void AgregarCliente(Cliente cliente)
        {
            AccesoDatos datos = new AccesoDatos();

            try
            {

                datos.setearQuery("insert into Clientes (DNI,Nombre,Apellido,Email,Direccion,Ciudad,CodigoPostal,FechaRegistro)values(@DNI,@Nombre,@Apellido,@Email,@Direccion,@Ciudad,@CodigoPostal,@FechaRegistro)");
                datos.agregarParametro("@DNI", cliente.DNI);
                datos.agregarParametro("@Nombre", cliente.Nombre);
                datos.agregarParametro("@Apellido", cliente.Apellido);
                datos.agregarParametro("@Email", cliente.Email);
                datos.agregarParametro("@Direccion", cliente.Direccion);
                datos.agregarParametro("@Ciudad", cliente.Ciudad);
                datos.agregarParametro("@CodigoPostal", cliente.CodigoPostal);
                datos.agregarParametro("@FechaRegistro", cliente.FechaRegistro);
                datos.ejecutarAccion();

            }

            catch (Exception ex)
            {
                throw ex;
            }
        }

        public Cliente BuscarxDni(int dni)
        {
            Cliente cliente;

            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearQuery("Select c.Id,c.dni, c.Nombre, c.Apellido, c.Email, c.Direccion, c.Ciudad, c.CodigoPostal,c.FechaRegistro from Clientes as c where c.DNI = " + dni);
                datos.ejecutarLector();

                if (datos.lector.Read())
                {
                    cliente = new Cliente();
                    cliente.Id = datos.lector.GetInt64(0);
                    cliente.DNI = datos.lector.GetInt32(1);
                    cliente.Nombre = datos.lector.GetString(2);
                    cliente.Apellido = datos.lector.GetString(3);
                    cliente.Email = datos.lector.GetString(4);
                    cliente.Direccion = datos.lector.GetString(5);
                    cliente.Ciudad = datos.lector.GetString(6);
                    cliente.CodigoPostal = datos.lector.GetString(7);
                    cliente.FechaRegistro = datos.lector.GetDateTime(8);

                    return cliente;
                }
            }
            catch (Exception)
            {


            }
            finally
            {
                datos.cerrarConexion();
            }
            return null;


     }
     
        public Boolean validarEmail(string email)
        {
            String expresion;
            expresion = "\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*";
            if (Regex.IsMatch(email, expresion))
            {
                if (Regex.Replace(email, expresion, String.Empty).Length == 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }

        public static void EnviarEmail(string To)
        {
            System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();

            mail.From = new MailAddress("pedrotonello11@gmail.com");

            mail.To.Add(To);
            mail.Subject = "Confirmacion del sorteo ";
            mail.Body = "Felicitaciones ya se encuentra participando del sorteo.";

            SmtpClient smtp = new SmtpClient();

            smtp.Host = "smtp.gmail.com";
            smtp.Port = 25;
            smtp.Credentials = new NetworkCredential("voucherstpmaxi@gmail.com", "vouchers123");
            smtp.EnableSsl = true;
            try
            {
                smtp.Send(mail);
            }
            catch (Exception ex)
            {
                throw new Exception("No se ha podido enviar el email", ex.InnerException);
            }
            finally
            {
                smtp.Dispose();
            }

        }

    }
}
