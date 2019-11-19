using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.ComponentModel.DataAnnotations;

namespace TheFoodLab.Models
{
    public class FrontController : Controller
    {
        // GET: Front
        public ActionResult Index()
        {
            return View("Login");
        }

        public ActionResult Login()
        {
            return View("Login");
        }

        public ActionResult Loguearse(Receteros user)
        {
            if (!ModelState.IsValid)
            {
                return View("Login");
            }
            else
            {
                bool validaruser = BD.ValidarLoginFront(user);
                if (validaruser)
                {
                    return View("Index");
                }
                else
                {
                    ViewBag.Error = "Usuario o contraseña incorrecta";
                    return View("Login", user);
                }
            }
        }
    }
}