using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TheFoodLab.Models
{
    public class TiposComida
    {
        private int _IdTiposComidas;
        private string _Nombre;

        public int IdTiposComidas { get => _IdTiposComidas; set => _IdTiposComidas = value; }
        public string Nombre { get => _Nombre; set => _Nombre = value; }

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