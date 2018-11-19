using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MenuAdminAcred : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_quizScrum_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddQuestion.aspx");
    }


    protected void btn_matITIL_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddQuestion.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddQuestion.aspx");
    }
}