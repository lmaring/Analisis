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
            sql = "insert into prueba(Id,Nombre) values("+CantPrueba()+",'"+ nombre+ "');";
            com = conexion.CreateCommand();
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
            String sql;
            SqlCommand com;
            conexion.Open();
            sql = "insert into pregunta(Id,IdPrueba,Pregunta) " +
                "values("+CantPregunta()+","+CantPrueba()+",'"+pregunta+"');";
            com = conexion.CreateCommand();
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
    public bool addRespuesta(string respuesta,string tipo)
    {
        bool crear = false;
        conexion.Close();
        try
        {
            String sql;
            SqlCommand com;
            conexion.Open();
            sql =" insert into respuesta(Id, IdPregunta, Tipo, Respuesta) " +
                "values("+CantRespuesta()+","+CantPregunta()+",'"+tipo+"','"+respuesta+"'); ";
            com = conexion.CreateCommand();
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
                cant = Int32.Parse(rs[0].ToString()) + 1;
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
                cant = Int32.Parse(rs[0].ToString()) + 1;
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
                cant = Int32.Parse(rs[0].ToString()) + 1;
            }
            conexion.Close();

        }
        catch (Exception e)
        {
        }


        return cant;
    }

}