using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TheFoodLab.Models;

namespace TheFoodLab.Models
{
    public class BackOfficeController : Controller
    {
        // GET: BackOffice
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Login()
        {
            return View();
        }

        public ActionResult Loguearse(Usuario user)
        {
            if (!ModelState.IsValid)
            {
                return View("Login");
            }
            else
            {
                bool validaruser = BD.ValidarLogin(user);
                if (validaruser)
                {
                    return RedirectToAction("Index");
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