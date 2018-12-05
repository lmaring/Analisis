using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
/// <summary>
/// Summary description for TestServices
/// </summary>
public class TestServices
{
    SqlConnection conexion = new SqlConnection(stringConection());

    public static string stringConection()
    {
        SqlConnectionStringBuilder aux = new SqlConnectionStringBuilder();
        aux.DataSource = "lmaring.database.windows.net";
        aux.UserID = "admin1997";
        aux.Password = "Armago97";
        aux.InitialCatalog = "InnovaSolution";
        return aux.ConnectionString;
    }
    /*para agregar cada uno de los elementos*/
    public bool addPrueba (string  nombre)
    {
        bool crear = false;
        conexion.Close();
        try
        {
            String sql;
            SqlCommand com;
            conexion.Open();
            sql = "insert into prueba(Id,Nombre) values(@Id,@Nombre);";
            com = conexion.CreateCommand();
            com.Parameters.AddWithValue("Id",CantPrueba());
            com.Parameters.AddWithValue("Nombre", nombre);
            com.CommandText = sql;
            com.ExecuteNonQuery();

            conexion.Close();
            crear = true;
        }
        catch (Exception e)
        {
            crear = false;
        }
        return crear;
    }
    public bool addPregunta(string pregunta)
    {
        bool crear = false;
        conexion.Close();
        try
        {
            int idPru = CantPrueba();
            int id = CantPregunta()+1;
            String sql;
            SqlCommand com;
            conexion.Open();
            sql = "insert into pregunta(Id,IdPrueba,Pregunta) " +
                "values(@Id,@IdPrueba,@Pregunta);";
            com = conexion.CreateCommand();
            com.Parameters.AddWithValue("Id", id);
            com.Parameters.AddWithValue("IdPrueba",idPru);
            com.Parameters.AddWithValue("Pregunta",pregunta);
            com.CommandText = sql;
            com.ExecuteNonQuery();
            crear = true;
            conexion.Close();
        }
        catch (Exception e)
        {
            crear = false;
        }
        return crear;
    }
    public bool addRespuesta(string respuesta,string Tipo)
    {
        bool crear = false;
        conexion.Close();
        try
        {
            int id = CantRespuesta() + 1;
            int idPregunta = CantPregunta();
            String sql;
            SqlCommand com;
            conexion.Open();
            sql ="insert into respuesta(Id, IdPregunta, Tipo, Respuesta) " +
                "values(@Id,@IdPregunta,@Tipo,@Respuesta); ";
            com = conexion.CreateCommand();
            com.Parameters.AddWithValue("Id", id);
            com.Parameters.AddWithValue("IdPregunta", idPregunta);
            com.Parameters.AddWithValue("Tipo", Tipo);
            com.Parameters.AddWithValue("Respuesta", respuesta);
            com.CommandText = sql;
            com.ExecuteNonQuery();
            conexion.Close();
            crear = true;
        }
         catch (Exception e)
        {
            crear = false;
        }
        return crear;
    }

    /*Para sacar las cantidad de que hay en cada table */
    public int CantPrueba()
    {
        int cant = 0;

        try
        {
            String sql;
            SqlCommand com;
            SqlDataReader rs;
            conexion.Close();
            conexion.Open();
            sql = "select count(*)from prueba;";
            com = conexion.CreateCommand();
            com.CommandText = sql;
            rs = com.ExecuteReader();

            while (rs.Read())
            {
                cant = Int32.Parse(rs[0].ToString());
            }
            conexion.Close();

        }
        catch (Exception e)
        {
        }


        return cant;
    }
    public int CantPregunta()
    {
        int cant = 0;

        try
        {
            String sql;
            SqlCommand com;
            SqlDataReader rs;
            conexion.Close();
            conexion.Open();
            sql = "select count(*)from pregunta;";
            com = conexion.CreateCommand();
            com.CommandText = sql;
            rs = com.ExecuteReader();

            while (rs.Read())
            {
                cant = Int32.Parse(rs[0].ToString());
            }
            conexion.Close();

        }
        catch (Exception e)
        {
        }


        return cant;
    }
    public int CantRespuesta()
    {
        int cant = 0;

        try
        {
            String sql;
            SqlCommand com;
            SqlDataReader rs;
            conexion.Close();
            conexion.Open();
            sql = "select count(*)from respuesta;";
            com = conexion.CreateCommand();
            com.CommandText = sql;
            rs = com.ExecuteReader();

            while (rs.Read())
            {
                cant = Int32.Parse(rs[0].ToString());
            }
            conexion.Close();

        }
        catch (Exception e)
        {
        }


        return cant;
    }

}