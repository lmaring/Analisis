using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Accreditation : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_quizScrum_Click(object sender, EventArgs e)
    {
        Response.Redirect("Test.aspx");
    }
    protected void btn_ITIL_Click(object sender, EventArgs e)
    {
        if(btn_ITIL.Text == "Matricular")
        {
            //Response.Redirect("Accreditation.aspx");
            btn_ITIL.Text = "Realizar quiz";
        }
        else
        {
            Response.Redirect("Test.aspx");
        }
    }
}