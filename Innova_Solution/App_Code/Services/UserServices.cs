using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;

public class UserServices : IUserServices
{
    SqlConnection conexion = new SqlConnection(stringConection());
    User aux=null;
    public static string stringConection()
    {
        SqlConnectionStringBuilder aux = new SqlConnectionStringBuilder();
        aux.DataSource = "lmaring.database.windows.net";
        aux.UserID = "admin1997";
        aux.Password = "Armago97";
        aux.InitialCatalog = "InnovaSolution"; 
        return aux.ConnectionString;
    }
    /// <summary>
    /// Revisa si nuestro usuario esta disponiblre
    /// </summary>
    /// <param name="user"></param>
    /// <param name="pass"></param>
    /// <param name="Users"></param>
    /// <returns></returns>
    public User Login(string userName, string pass)
    {
        
        String sql;
        SqlCommand com;
        SqlDataReader rs;
        conexion.Close();
        conexion.Open();
        sql = "SELECT * FROM Cliente where UserName ='"+userName+"'  and PassWord ='"+pass+"' ;";
        com = conexion.CreateCommand();
        com.CommandText = sql;
        rs = com.ExecuteReader();

        try
        {
            while (rs.Read())
            {
                int id = Int32.Parse(rs[0].ToString());
                string UserName = rs[1].ToString();
                string PassWord = rs[2].ToString();
                string mail = rs[3].ToString();
                int telefono = Int32.Parse(rs[4].ToString());
                string profesion = rs[5].ToString();
                string vivienda = rs[6].ToString();
                aux = new User (id, userName, PassWord, mail, telefono, profesion, vivienda);
            }
            conexion.Close();
        }
        catch(Exception e)
        {

        }
        return aux;
    }

    /// <summary>
    /// La funcion es ver si el usuario que queremos agregar esta libre
    /// </summary>
    /// <param name="user"></param>
    /// <param name="Users"></param>
    /// <returns></returns>
    public bool UserNameFreee(string user, List<User> Users)
    {
        bool crear = false;

        for (int i = 0; i <= Users.Count; i++)
        {
            if (Users.Count == 0)
            {
                crear = true;
            }
            else
            {
                try
                {
                    if (Users[i].UserName != user)
                    {
                        crear = true;
                    }
                }
                catch (SystemException)
                {

                }
            }

        }
        return crear;
    }

    public bool CreateUser(string user, string pass, int id, string mail, int telefono, string profesion, string vivienda)
    {
        bool crear = false;
        conexion.Close();
        try
        {
            String sql;
            SqlCommand com;
            conexion.Open();
            sql = "INSERT INTO Cliente (Id,UserName,PassWord,Mail,Telefono,Profesion,Vivienda)" +
                "VALUES (@Id,@UserName,@PassWord,@Mail,@Telefono,@Profesion,@Vivienda)";
            com = conexion.CreateCommand();
            com.Parameters.AddWithValue("Id", id);
            com.Parameters.AddWithValue("UserName", user);
            com.Parameters.AddWithValue("PassWord", pass);
            com.Parameters.AddWithValue("Mail", mail);
            com.Parameters.AddWithValue("Telefono", telefono);
            com.Parameters.AddWithValue("Profesion", profesion);
            com.Parameters.AddWithValue("Vivienda", vivienda);
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

    public int lastId()
    {
        int Id =0 ;

        try
        {
            String sql;
            SqlCommand com;
            SqlDataReader rs;
            conexion.Close();
            conexion.Open();
            sql = "select count(Id) from cliente;";
            com = conexion.CreateCommand();
            com.CommandText = sql;
            rs = com.ExecuteReader();

            while (rs.Read())
            {
                 Id = Int32.Parse(rs[0].ToString())+1;
            }
            conexion.Close();

        }
        catch (Exception e)
        {
            Id = 0;
        }


        return Id;
    }
}