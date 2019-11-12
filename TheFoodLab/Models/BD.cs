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
        public static string connectionString = ("Server=.; Database=TheFoodLab BD; Trusted_Connection = True;");
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

        public static bool ValidarLogin(Usuario user)
        {
            SqlConnection Conexion = Conectar();
            SqlCommand consulta = Conexion.CreateCommand();
            consulta.CommandType = System.Data.CommandType.Text;
            consulta.CommandText = "Select * from Usuario";
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
                int idReceta = Convert.ToInt32(dataReader["idReceta"]);
                string Titulo = dataReader["Titulo"].ToString();
                string Descripcion = dataReader["Descrpicion"].ToString();
                string Foto = dataReader["Foto"].ToString();
                int Duracion = Convert.ToInt32(dataReader["Duracion"]);
                int fk_TiposComidas = Convert.ToInt32(dataReader["fk_TiposComidas"]);
                int fk_Receteros = Convert.ToInt32(dataReader["fk_Receteros"]);
                Receta unaReceta = new Receta(idReceta,Titulo,Descripcion,Foto,Duracion,fk_TiposComidas,fk_Receteros);
                LS.Add(unaReceta);
            }
            return LS;
        }
    }
}