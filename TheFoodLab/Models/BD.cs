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
            Consulta.CommandText = "UPDATE Recetas SET idRecetas=" + rec.IdReceta + ", Titulo='" + rec.Titulo1 + "', Descripcion='" + rec.Descripcion1 +"', Duracion='" +rec.Duracion1+ ",  Foto='" + rec.NombreImagen1 + "' WHERE IdReceta=" + rec.IdReceta;
            Consulta.CommandType = System.Data.CommandType.Text;
            Consulta.ExecuteNonQuery();
            Desconectar(Conexion);
        }

        public static void EliminarReceta(int idRec)
        {
            SqlConnection Conexion = Conectar();
            SqlCommand Consulta = Conexion.CreateCommand();
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
            consulta.CommandText = "Select * from Recetas WHERE idRecetas =" + IdReceta.ToString(); ;
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
    }
}