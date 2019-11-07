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
    }
}