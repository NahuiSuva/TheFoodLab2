using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace TheFoodLab.Models
{
    public class Receteros
    {
        private int idRecetero;
        private string Nombre;
        private string Apellido;
        private string Descripcion;
        private string NombreImagen;
        private HttpPostedFileBase Foto;
        private int Edad;
        private string Email;
        private string Username;
        private string Password;

        public int IdRecetero { get => idRecetero; set => idRecetero = value; }
        public string Nombre1 { get => Nombre; set => Nombre = value; }
        public string Apellido1 { get => Apellido; set => Apellido = value; }
        public string Descripcion1 { get => Descripcion; set => Descripcion = value; }
        public string NombreImagen1 { get => NombreImagen; set => NombreImagen = value; }
        public HttpPostedFileBase Foto1 { get => Foto; set => Foto = value; }
        public int Edad1 { get => Edad; set => Edad = value; }
        public string Email1 { get => Email; set => Email = value; }
        [Required(ErrorMessage = "Ingresá un usuario valido!!!")]
        public string Username1 { get => Username; set => Username = value; }
        [Required(ErrorMessage = "Ingresá una contraseña valida!!!")]
        public string Password1 { get => Password; set => Password = value; }

        public Receteros()
        {

        }

        public Receteros(int id, string nom, string ape, string desc, string nomimg, HttpPostedFileBase fot, int eda, string ema, string use, string pass)
        {
            IdRecetero = id;
            Nombre1 = nom;
            Apellido1 = ape;
            Descripcion1 = desc;
            NombreImagen1 = nomimg;
            Foto1 = fot;
            Email1 = ema;
            Username1 = use;
            Password1 = pass;
        }

        public Receteros(int id, string nom, string ape, string desc, string nomimg, int eda, string ema, string use, string pass)
        {
            IdRecetero = id;
            Nombre1 = nom;
            Apellido1 = ape;
            Descripcion1 = desc;
            NombreImagen1 = nomimg;
            Email1 = ema;
            Username1 = use;
            Password1 = pass;
        }
    }
}