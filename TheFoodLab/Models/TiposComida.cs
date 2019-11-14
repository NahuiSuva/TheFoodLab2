using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TheFoodLab.Models
{
    public class TiposComida
    {
        private static int _IdTiposComidas;
        private static string _Nombre;

        public static int IdTiposComidas { get => _IdTiposComidas; set => _IdTiposComidas = value; }
        public static string Nombre { get => _Nombre; set => _Nombre = value; }

        public TiposComida(int id, string nom)
        {
            IdTiposComidas = id;
            Nombre = nom;
        }
        
        public TiposComida()
        {

        }
    }
}