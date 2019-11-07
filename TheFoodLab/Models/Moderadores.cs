using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace TheFoodLab.Models
{
    public class Moderadores
    {
            private string _Username;
            private string _Password;

            [Required(ErrorMessage = "Ingresá un usuario!!!")]
            public string Username { get => _Username; set => _Username = value; }
            [Required(ErrorMessage = "Ingresá una contraseña!!!")]
            public string Password { get => _Password; set => _Password = value; }
    }
}