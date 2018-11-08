using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public static IUserServices userServices = new UserServices();
    int id = 0;
    protected void Button1_Click(object sender, EventArgs e)
    {
        List<User> Users = (List<User>)Session["Data"];
        string nameUser = TxtUserName.Text;
        string passwordUser = TxtPassWord.Text;
        User existe = userServices.Login(nameUser, passwordUser);
        if (existe != null)
        {
            Response.Write("<script>alert('El Usuario Existe, Entro con Existo  '); </script>");

        }
        else
        {
            Response.Write("<script>alert('Contraseña o Usuario Incorrecto!');</script>");
        }
    }

    protected void BtnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("Index.aspx");
    }
}