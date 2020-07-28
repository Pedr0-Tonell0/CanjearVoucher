using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Cliente
    {
        public Int64 Id { get; set; }

        public int DNI { get; set; }

        public string Nombre { get; set; }

        public string Apellido { get; set; }

        public string Email { get; set; }

        public string Direccion { get; set; }

        public string Ciudad { get; set; }

        public string CodigoPostal { get; set; }
        public DateTime FechaRegistro { get; set; }
    }
}

