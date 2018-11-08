using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// Data
using System.Data;
using System.Data.SqlClient;

public partial class CreateUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public static IUserServices userServices = new UserServices();
    int id = 1;

    protected void Button1_Click(object sender, EventArgs e)
    {
        string nameUser = TxtUserName.Text;
        string passwordUser = TxtPassWord.Text;
        string mail = TxtMail.Text;
        int telefono=int.Parse(TextTel.Text);
        string profesion= TextProf.Text;
        string vivienda= TextViv.Text;
        bool UsersAux = userServices.CreateUser(nameUser, passwordUser, id, mail, telefono, profesion, vivienda);

        if (UsersAux == true)
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