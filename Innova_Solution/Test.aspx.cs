using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Test : System.Web.UI.Page
{
    TestServices aux = new TestServices();
    Tests test = null;
    int pregunta = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        test = (Tests)Session["Test"];
        setBtn(pregunta);
    }


    protected void btn_resp1_Click(object sender, EventArgs e)
    {
        pregunta= pregunta+1;
        setBtn(pregunta);
    }

    protected void btn_resp2_Click(object sender, EventArgs e)
    {
        pregunta = pregunta + 1;
        setBtn(pregunta);
    }

    protected void btn_resp3_Click(object sender, EventArgs e)
    {
        pregunta = pregunta + 1;
        setBtn(pregunta);
    }

    protected void btn_resp4_Click(object sender, EventArgs e)
    {
        pregunta = pregunta + 1;
        setBtn(pregunta);
    }

    public void setBtn(int preg)
    {
        Preg.Text = test.preguntas[preg].pregunta;
        btn_resp1.Text = test.preguntas[preg].repuestas[0].respuesta;
        btn_resp2.Text = test.preguntas[preg].repuestas[1].respuesta;
        btn_resp3.Text = test.preguntas[preg].repuestas[2].respuesta;
        btn_resp4.Text = test.preguntas[preg].repuestas[3].respuesta;
    }
}