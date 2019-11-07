using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TheFoodLab.Models
{
    public class Receta
    {
        private int idReceta;
        private string Titulo;
        private string Descripcion;
        private string Foto;
        private int Duracion;
        private int fk_TiposComidas;
        private int fk_Receteros;

        public int IdReceta { get => idReceta; set => idReceta = value; }
        public string Titulo1 { get => Titulo; set => Titulo = value; }
        public string Descripcion1 { get => Descripcion; set => Descripcion = value; }
        public string Foto1 { get => Foto; set => Foto = value; }
        public int Duracion1 { get => Duracion; set => Duracion = value; }
        public int Fk_TiposComidas { get => fk_TiposComidas; set => fk_TiposComidas = value; }
        public int Fk_Receteros { get => fk_Receteros; set => fk_Receteros = value; }

        public Receta()
        {
            
        }

        public Receta(int id,string Titu, string desc, string fot, int dura, int TipoCom, int receteros)
        {
            IdReceta = id;
            Titulo1 = Titu;
            Descripcion1 = desc;
            Foto1 = fot;
            Duracion1 = dura;
            fk_TiposComidas = TipoCom;
            Fk_Receteros = receteros;
        }
    }
}