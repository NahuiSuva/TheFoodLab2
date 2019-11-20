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
            BD.EliminarIngredienteABuscar();
            ViewBag.ListaIngredientes = BD.ListarIngredientesABuscar();
            return View();
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

        public ActionResult RecetasDeRecetero(Receteros rec)
        {
            ViewBag.ListaRecetasXRecetero = BD.ListarRecetasXRecetero(rec.IdRecetero);
            return View();
        }

        [HttpPost]
        public ActionResult AgregarIngrediente(Ingredientes Ingre)
        {
            Ingredientes Ingrediente = BD.TraerIngrediente(Ingre);
            if (Ingrediente.Nombre != null)
            {
                BD.IngresarIngredienteABuscar(Ingrediente);
            }
            else
            {
                ViewBag.Error = "Ingrediente no cargado";
            }
            ViewBag.ListaIngredientes = BD.ListarIngredientesABuscar();
            return View("Index");
        }

        //TODO: Revisar porque el objeto ingrediente llega vacio (consultar a leo por: new { Ingredient = Ingre })
        public ActionResult EliminarUnIngredienteABuscar(Ingredientes Ingredient)
        {
            BD.EliminarUnIngredienteABuscar(Ingredient);
            ViewBag.ListaIngredientes = BD.ListarIngredientesABuscar();
            return View("Index");
        }
    }
}