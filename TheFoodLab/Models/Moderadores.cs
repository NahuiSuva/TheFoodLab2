using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using TheFoodLab.Models;
using System.Data.SqlClient;

namespace TheFoodLab.Models
{
    public class Moderadores
    {
        private int _idModeradores;
        private string _Username;
        private string _Password;

        public int IdModeradores { get => _idModeradores; set => _idModeradores = value; }
        [Required(ErrorMessage = "Ingresá un usuario!!!")]
        public string Username { get => _Username; set => _Username = value; }
        [Required(ErrorMessage = "Ingresá una contraseña!!!")]
        public string Password { get => _Password; set => _Password = value; }

        public Moderadores(int idMod, string user, string pass)
        {
            IdModeradores = idMod;
            Username = user;
            Password = pass;
        }

        public Moderadores()
        {

        }
    }
}