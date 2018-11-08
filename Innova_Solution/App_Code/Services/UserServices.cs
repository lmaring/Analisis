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
        sql = "SELECT * FROM Cliente where UserName ='lmaring50'  and PassWord ='123'";
        com = conexion.CreateCommand();
        com.CommandText = sql;
        rs = com.ExecuteReader();
        rs.Read();

        if (rs.Read())
        {


            string PassWord = rs[3].ToString();
            string mail = rs[4].ToString();
            int telefono = Int32.Parse(rs[5].ToString());
            string profesion = rs[6].ToString();
            string vivienda = rs[7].ToString();
            conexion.Close();
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


}