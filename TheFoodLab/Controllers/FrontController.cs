using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TheFoodLab.Models
{
    public class FrontController : Controller
    {
        // GET: Front
        public ActionResult Index()
        {
			ViewBag.Mensaje="Hola";
            return View();
        }
    }
}