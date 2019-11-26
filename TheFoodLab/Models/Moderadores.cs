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

            public int IdModeradores { get; set; }
            [Required(ErrorMessage = "Ingresá un usuario valido!!!")]
            public string Username { get => _Username; set => _Username = value; }
            [Required(ErrorMessage = "Ingresá una contraseña valida!!!")]
            public string Password { get => _Password; set => _Password = value; }
    }
}