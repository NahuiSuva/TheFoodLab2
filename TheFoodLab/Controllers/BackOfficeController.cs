﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TheFoodLab.Models;
using System.ComponentModel.DataAnnotations;

namespace TheFoodLab.Controllers
{
    public class BackOfficeController : Controller
    {
        // GET: BackOffice
        public ActionResult Index()
        {
            return View("Login");
        }

        public ActionResult Login()
        {
            return View("Login");
        }

        [HttpPost]
        public ActionResult Loguearse(Moderadores user)
        {
            if (!ModelState.IsValid)
            {
                return View("Login");
            }
            else
            {
                int validaruser = BD.ValidarLogin(user);
                if (validaruser>-1)
                {
                    Session["User"] = validaruser;
                    return View("Index");
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
            ViewBag.ListaRecetas = BD.TraerRecetas();
            return View();
        }

        public ActionResult ABMIngredientes()
        {
            return View();
        }

        public ActionResult BMReceteros()
        {
            return View();
        }

        public ActionResult ABMTiposDeComidas ()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Grabar(Receta rec, string Accion)
        {
            if (ModelState.IsValid)
            {
                if (rec.Foto1 != null)
                {
                    string NuevaUbicacion = Server.MapPath("~/Content/img/") + rec.Foto1.FileName;
                    rec.Foto1.SaveAs(NuevaUbicacion);
                    rec.NombreImagen1 = rec.Foto1.FileName;
                }

                if (Accion == "Editar")
                {
                    BD.ModificarReceta(rec);
                }
                else
                {
                    int idReceta = rec.IdReceta;
                    BD.EliminarReceta(idReceta);
                }
                return RedirectToAction("BMRecetas");
            }
            else
            {
                ViewBag.ListaTipo = BD.ListarTipos();
                ViewBag.Accion = Accion;
                return View("Accion", rec);
            }

        }


        public ActionResult Accion(string Accion, int id)
        {
            ViewBag.Accion = Accion;
            Receta rec = new Receta();
            if (Accion == "Editar")
            {
                if (id > 0)
                {
                    // Voy a buscar la receta a la base de datos
                    rec = BD.TraerUnaReceta(id);
                }
                ViewBag.ListaTipo = BD.ListarTipos();
                ViewBag.Imagen = rec.NombreImagen1;
                return View(rec);
            }
            else
            {
                BD.EliminarReceta(id);
                return RedirectToAction("BMRecetas");
            }
        }
    }
}