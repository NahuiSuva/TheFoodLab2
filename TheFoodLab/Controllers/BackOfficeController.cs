﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TheFoodLab.Models;
using System.ComponentModel.DataAnnotations;

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
            return View("Login");
        }

        public ActionResult Loguearse(Moderadores user)
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

        public ActionResult BMRecetas()
        {
            return View("BMRecetas");
        }

        [HttpPost]
        public ActionResult Grabar(Receta not, string Accion)
        {
            if (Accion == "Editar")
            {
                BD.ModificarReceta(not);
            }
            else
            {
                BD.EliminarReceta(not);
            }

            return RedirectToAction("BMRecetas");
        }
}