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
        bool SeLogueo;

        // GET: Front
        public ActionResult Index()
        {
            ViewBag.ListaDestacadas = BD.TraerDestacadas();
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
                int validaruser = BD.ValidarLoginFront(user);
                if (validaruser>-1)
                {
                    Session["User"] = validaruser;
                    int id = Session["User"];
                    return View("Index");
                    SeLogueo = true;
                }
                else
                {
                    ViewBag.Error = "Usuario o contraseña incorrecta";
                    return View("Login");
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
            ViewBag.ListaDestacadas = BD.TraerDestacadas();

            Ingredientes Ingrediente = BD.TraerIngrediente(Ingre);
            if (Ingrediente.Nombre != null)
            {
                List<Ingredientes> ListaIngreABuscar = BD.ListarIngredientesABuscar();
                List<int> ListaIdsABuscar = BD.ListarIngredientesABuscarId();
                if (ListaIdsABuscar.Contains(Ingrediente.IdIngrediente))
                {
                    ViewBag.Error = "Ingrediente ya cargado";
                }
                else
                {
                    BD.IngresarIngredienteABuscar(Ingrediente);
                }
            }
            else
            {
                ViewBag.Error = "Ingrediente no cargado";
            }
            ViewBag.ListaIngredientes = BD.ListarIngredientesABuscar();
            return View("Index");
        }

        public ActionResult EliminarUnIngredienteABuscar(int idIngrediente)
        {
            BD.EliminarUnIngredienteABuscar(idIngrediente);
            ViewBag.ListaIngredientes = BD.ListarIngredientesABuscar();
            return View("Index");
        }

        public ActionResult Registrarse()
        {
            return View("Registrarse");
        }

        [HttpPost]
        public ActionResult Grabar(Receteros rec)
        {
            if (ModelState.IsValid)
            {
                if (rec.Foto1 != null)
                {
                    string NuevaUbicacion = Server.MapPath("~/Content/img/") + rec.Foto1.FileName;
                    rec.Foto1.SaveAs(NuevaUbicacion);
                    rec.NombreImagen1 = rec.Foto1.FileName;
                }

                BD.IngresarRecetero(rec);
                return RedirectToAction("Index");
            }
            else
            {
                ViewBag.Recetero = rec;
                return View("Registrarse");
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
            else if(Accion=="Subir")
            {
                ViewBag.ListaTipo = BD.ListarTipos();
                return View();
            }
            else
            {
                BD.EliminarReceta(id);
                return RedirectToAction("RecetasDeRecetero");
            }
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
                else if(Accion=="Subir")
                {
                    Session["Recetero"] = validaruser;
                    int id = Session["Recetero"];
                    BD.InsertarReceta(rec,Session["Recetero"], id);
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
    }
}