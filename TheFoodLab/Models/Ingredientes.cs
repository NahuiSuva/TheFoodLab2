using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TheFoodLab.Models
{
    public class Ingredientes
    {
        private int _IdIngrediente;
        private string _Nombre;

        public int IdIngrediente { get => _IdIngrediente; set => _IdIngrediente = value; }
        public string Nombre { get => _Nombre; set => _Nombre = value; }

        public Ingredientes(int id, string nom)
        {
            IdIngrediente = id;
            Nombre = nom;
        }

        public Ingredientes()
        {

        }
    }
}
