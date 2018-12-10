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
    int catPreg = 0;
    int correctas= 0;
    int pregunta = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["cantPreg"] = catPreg;
        Session["correctas"]= correctas;
        Session["pregunta"] = pregunta;

    }

    protected void btn_ITIL_Click(object sender, EventArgs e)
    {
        test = aux.selectTest("ITIL");
        Session["Test"] = test;
        Response.Redirect("Test.aspx");
    }



    protected void btn_CCNA_Click(object sender, EventArgs e)
    {
        test = aux.selectTest("CCNA");
        Session["Test"] = test;
        Response.Redirect("Test.aspx");
    }

    protected void btn_quizPMP_Click(object sender, EventArgs e)
    {
        test = aux.selectTest("PMP");
        Session["Test"] = test;
        Response.Redirect("Test.aspx");


    }

    protected void btn_SCRUM_Click(object sender, EventArgs e)
    {

    }

    protected void btn_Examen_Click(object sender, EventArgs e)
    {

    }
}