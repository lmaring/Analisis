using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        User User = (User)Session["User"];
        lbl_User.Text = User.UserName;
        lbl_Pass.Text = User.PassWord;
        lbl_correo.Text = User.mail;
        lbl_telefono.Text = User.telefono.ToString();
        lbl_profesion.Text = User.profesion;
        lblVivienda.Text = User.vivienda;
    }

    protected void btn_Payment_Click(object sender, EventArgs e)
    {
        Response.Redirect("Payment.aspx");
    }
}