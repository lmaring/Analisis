using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// Data
using System.Data;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

public partial class CreateUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public static IUserServices userServices = new UserServices();

    protected void Button1_Click(object sender, EventArgs e)
    {
        string password = (@"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$"); // Regex para la contraseña
        Match pass = Regex.Match(TxtPassWord.Text, password); //La contraseña debe tener al entre 8 y 16 caracteres, al menos un dígito, al menos una minúscula y al menos una mayúscula.

        string nameUser = TxtUserName.Text;
        string passwordUser = TxtPassWord.Text;
        string pass2 = txtPass2.Text;
        string mail = TxtMail.Text;
        int telefono=int.Parse(TextTel.Text);
        string profesion= TextProf.Text;
        string vivienda= TextViv.Text;
        int id = userServices.lastId();
        bool UsersAux = userServices.CreateUser(nameUser, passwordUser, id, mail, telefono, profesion, vivienda);

        if (pass.Success)
        {
            Response.Write("<script>alert('Escriba al menos un caracter especial y una mayúscula en la contraseña');</script>");
        }else if (passwordUser != pass2)
        {
            Response.Write("<script>alert('Las contraseñas deben de coincidir');</script>");
        }
        else if (UsersAux == true)
        {
            Response.Write("<script>alert('Usuario Creado');</script>");
        }
        else
        {
            Response.Write("<script>alert('Ya Existe este usurario');</script>");
        }
    }

    protected void BtnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("Index.aspx");
    }



}