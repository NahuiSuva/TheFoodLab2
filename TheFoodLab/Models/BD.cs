using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TheFoodLab.Models;
using System.Data.SqlClient;

namespace TheFoodLab.Models
{
    public class BD
    {
        public static List<TiposComida> ListaTipos = new List<TiposComida>();
        public static string connectionString = "Server=.; Database=TheFoodLabBD;User Id=alumno;Password=alumno1;";
        private static SqlConnection Conectar()
        {
            SqlConnection a = new SqlConnection(connectionString);
            a.Open();
            return a;
        }

        private static void Desconectar(SqlConnection connection)
        {
            connection.Close();
        }

        public static bool ValidarLogin(Moderadores user)
        {
            SqlConnection Conexion = Conectar();
            SqlCommand consulta = Conexion.CreateCommand();
            consulta.CommandType = System.Data.CommandType.Text;
            consulta.CommandText = "Select * from Moderadores";
            SqlDataReader dataReader = consulta.ExecuteReader();
            bool validar = false;
            while (dataReader.Read() && validar == false)
            {
                string usuario = dataReader["Username"].ToString();
                string contrasenia = dataReader["Password"].ToString();
                if (usuario == user.Username && contrasenia == user.Password)
                {
                    validar = true;
                }
            }
            Desconectar(Conexion);
            return validar;
        }

        public static bool ValidarLoginFront(Receteros user)
        {
            SqlConnection Conexion = Conectar();
            SqlCommand consulta = Conexion.CreateCommand();
            consulta.CommandType = System.Data.CommandType.Text;
            consulta.CommandText = "Select * from Receteros";
            SqlDataReader dataReader = consulta.ExecuteReader();
            bool validar = false;
            while (dataReader.Read() && validar == false)
            {
                string usuario = dataReader["Username"].ToString();
                string contrasenia = dataReader["Password"].ToString();
                if (usuario == user.Username1 && contrasenia == user.Password1)
                {
                    validar = true;
                }
            }
            Desconectar(Conexion);
            return validar;
        }

        public static List<Receta> TraerRecetas()
        {

            List<Receta> LS = new List<Receta>();
            SqlConnection Conexion = Conectar();
            SqlCommand consulta = Conexion.CreateCommand();
            consulta.CommandType = System.Data.CommandType.Text;
            consulta.CommandText = "Select * from Recetas";
            SqlDataReader dataReader = consulta.ExecuteReader();
            while (dataReader.Read())
            {
                int idReceta = Convert.ToInt32(dataReader["idRecetas"]);
                string Titulo = dataReader["Titulo"].ToString();
                string Descripcion = dataReader["Descripcion"].ToString();
                string Foto = dataReader["Foto"].ToString();
                int Duracion = Convert.ToInt32(dataReader["Duracion"]);
                int fk_TiposComidas = Convert.ToInt32(dataReader["fk_TiposComidas"]);
                int fk_Receteros = Convert.ToInt32(dataReader["fk_Receteros"]);
                Receta unaReceta = new Receta(idReceta,Titulo,Descripcion,Foto,Duracion,fk_TiposComidas,fk_Receteros);
                LS.Add(unaReceta);
            }
            return LS;
        }

        public static void ModificarReceta(Receta rec)
        {
            SqlConnection Conexion = Conectar();
            SqlCommand Consulta = Conexion.CreateCommand();
            Consulta.CommandText = "UPDATE Recetas SET Titulo='" + rec.Titulo1 + "', Descripcion='" + rec.Descripcion1 +"', Duracion='" +rec.Duracion1+ "',  Foto='" + rec.NombreImagen1 + "'WHERE idRecetas=" + rec.IdReceta;
            Consulta.CommandType = System.Data.CommandType.Text;
            Consulta.ExecuteNonQuery();
            Desconectar(Conexion);
        }

        public static void EliminarReceta(int idRec)
        {
            SqlConnection Conexion = Conectar();
            SqlCommand Consulta = Conexion.CreateCommand();
            Consulta.CommandText = "Delete from IngredientesXRecetas WHERE fk_Recetas=" + idRec;
            Consulta.CommandType = System.Data.CommandType.Text;
            Consulta.ExecuteNonQuery();
            Consulta.CommandText = "Delete from Valoraciones WHERE fk_Recetas=" + idRec;
            Consulta.CommandType = System.Data.CommandType.Text;
            Consulta.ExecuteNonQuery();
            Consulta.CommandText = "Delete from Recetas WHERE idRecetas=" + idRec;
            Consulta.CommandType = System.Data.CommandType.Text;
            Consulta.ExecuteNonQuery();
            Desconectar(Conexion);
        }

        public static Receta TraerUnaReceta(int IdReceta)
        {
            SqlConnection Conexion = Conectar();
            SqlCommand consulta = Conexion.CreateCommand();
            consulta.CommandType = System.Data.CommandType.Text;
            consulta.CommandText = "Select * from Recetas WHERE idRecetas =" + IdReceta.ToString();
            SqlDataReader dataReader = consulta.ExecuteReader();
            Receta nuevo = new Receta();
            while (dataReader.Read())
            {
                int idReceta = Convert.ToInt32(dataReader["idRecetas"]);
                string Titulo = dataReader["Titulo"].ToString();
                string Descripcion = dataReader["Descripcion"].ToString();
                string Foto = dataReader["Foto"].ToString();
                int Duracion = Convert.ToInt32(dataReader["Duracion"]);
                int fk_TiposComidas = Convert.ToInt32(dataReader["fk_TiposComidas"]);
                int fk_Receteros = Convert.ToInt32(dataReader["fk_Receteros"]);
                nuevo = new Receta(idReceta, Titulo, Descripcion, Foto, Duracion, fk_TiposComidas, fk_Receteros);
            }
            Desconectar(Conexion);
            return nuevo;
        }

        public static List<TiposComida> ListarTipos()
        {
            ListaTipos.Clear();
            SqlConnection Conexion = Conectar();
            SqlCommand consulta = Conexion.CreateCommand();
            consulta.CommandType = System.Data.CommandType.Text;
            consulta.CommandText = "Select* from TiposComida";
            SqlDataReader dataReader = consulta.ExecuteReader();
            while (dataReader.Read())
            {
                int idTipo = Convert.ToInt32(dataReader["idTiposComidas"]);
                string Nombre = dataReader["Nombre"].ToString();
                TiposComida nuevo = new TiposComida(idTipo, Nombre);
                ListaTipos.Add(nuevo);
            }
            Desconectar(Conexion);
            return ListaTipos;
        }

        public static List<Receta> ListarRecetasXRecetero (int idRecetero)
        {
            List<Receta> Lista = new List<Receta>();
            SqlConnection Conexion = Conectar();
            SqlCommand consulta = Conexion.CreateCommand();
            consulta.CommandType = System.Data.CommandType.Text;
            consulta.CommandText = "Select * from Recetas Where fk_Receteros="+idRecetero.ToString();
            SqlDataReader dataReader = consulta.ExecuteReader();
            while (dataReader.Read())
            {
                int idReceta = Convert.ToInt32(dataReader["idRecetas"]);
                string Titulo = dataReader["Titulo"].ToString();
                string Descripcion = dataReader["Descripcion"].ToString();
                string Foto = dataReader["Foto"].ToString();
                int Duracion = Convert.ToInt32(dataReader["Duracion"]);
                int fk_TiposComidas = Convert.ToInt32(dataReader["fk_TiposComidas"]);
                int fk_Receteros = Convert.ToInt32(dataReader["fk_Receteros"]);
                Receta unaReceta = new Receta(idReceta, Titulo, Descripcion, Foto, Duracion, fk_TiposComidas, fk_Receteros);
                Lista.Add(unaReceta);
            }
            return Lista;
        }

        public static Ingredientes TraerIngrediente(Ingredientes Ingre)
        {
            SqlConnection Conexion = Conectar();
            SqlCommand consulta = Conexion.CreateCommand();
            consulta.CommandType = System.Data.CommandType.Text;
            consulta.CommandText = "Select* from Ingredientes where Nombre = '" + Ingre.Nombre + "'";
            SqlDataReader dataReader = consulta.ExecuteReader();
            Ingredientes Ingrediente = new Ingredientes();
            if (dataReader.Read())
            {
                Ingrediente.IdIngrediente = Convert.ToInt32(dataReader["idIngrediente"]);
                Ingrediente.Nombre = dataReader["Nombre"].ToString();
            }
            Desconectar(Conexion);
            return Ingrediente;
        }

        public static void IngresarIngredienteABuscar(Ingredientes Ingre)
        {
            SqlConnection Conexion = Conectar();
            SqlCommand consulta = Conexion.CreateCommand();
            consulta.CommandType = System.Data.CommandType.Text;
            consulta.CommandText = "Insert into BuscarIngredientes (Nombre, fk_IngredienteABuscar) values('"+Ingre.Nombre+"',"+Ingre.IdIngrediente+")" ;
            consulta.ExecuteNonQuery();
        }

        public static List<int> ListarIngredientesABuscarId()
        {
            SqlConnection Conexion = Conectar();
            SqlCommand consulta = Conexion.CreateCommand();
            consulta.CommandType = System.Data.CommandType.Text;
            consulta.CommandText = "Select * from BuscarIngredientes";
            SqlDataReader dataReader = consulta.ExecuteReader();
            List<int> ListaIngre = new List<int>();
            while (dataReader.Read())
            {
                int idIngrediente = Convert.ToInt32(dataReader["fk_IngredienteABuscar"]);
                ListaIngre.Add(idIngrediente);
            }
            Conexion.Close();
            return ListaIngre;
        }

        public static List<Ingredientes> ListarIngredientesABuscar()
        {
            SqlConnection Conexion = Conectar();
            SqlCommand consulta = Conexion.CreateCommand();
            consulta.CommandType = System.Data.CommandType.Text;
            consulta.CommandText = "Select * from BuscarIngredientes";
            SqlDataReader dataReader = consulta.ExecuteReader();
            List<Ingredientes> ListaIngre = new List<Ingredientes>();
            while (dataReader.Read())
            {
                int idIngrediente = Convert.ToInt32(dataReader["fk_IngredienteABuscar"]);
                string Nombre = dataReader["Nombre"].ToString();
                Ingredientes Ingre = new Ingredientes(idIngrediente, Nombre);
                ListaIngre.Add(Ingre);
            }
            Conexion.Close();
            return ListaIngre;
        }

        public static void EliminarIngredienteABuscar()
        {
            SqlConnection Conexion = Conectar();
            SqlCommand consulta = Conexion.CreateCommand();
            consulta.CommandType = System.Data.CommandType.Text;
            consulta.CommandText = "Delete BuscarIngredientes";
            consulta.ExecuteNonQuery();
        }

        public static void EliminarUnIngredienteABuscar(int Ingre)
        {
            SqlConnection Conexion = Conectar();
            SqlCommand consulta = Conexion.CreateCommand();
            consulta.CommandType = System.Data.CommandType.Text;
            consulta.CommandText = "Delete BuscarIngredientes where fk_IngredienteABuscar='" + Ingre +"'";
            consulta.ExecuteNonQuery();
        }
    }
}