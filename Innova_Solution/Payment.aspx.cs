using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void imgBack_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("UserInfo.aspx");
    }

    protected void btn_cancelar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Accreditation.aspx");
    }

    protected void btn_pagar_Click(object sender, EventArgs e)
    {
        //Cambiar en la base de datos el tipo del cliente
        Response.Redirect("Accreditation.aspx");
    }
}