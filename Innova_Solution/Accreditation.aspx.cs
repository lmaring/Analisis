using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Accreditation : System.Web.UI.Page
{
    TestServices aux = new TestServices();
    Tests test = null;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_quizPMP_Click(object sender, EventArgs e)
    {
        Response.Redirect("Test.aspx");
    }
    protected void btn_ITIL_Click(object sender, EventArgs e)
    {
        test = aux.selectTest("ITIL");
        Session["Test"] = test;
        Response.Redirect("Test.aspx");
    }

    protected void btn_CCNA_Click(object sender, EventArgs e)
    {

    }

    protected void btn_SCRUM_Click(object sender, EventArgs e)
    {

    }

    protected void btn_Examen_Click(object sender, EventArgs e)
    {

    }
}