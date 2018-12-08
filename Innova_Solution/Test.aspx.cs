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

    protected void Page_Load(object sender, EventArgs e)
    {
        test=aux.selectTest(1);
        Preg.Text = test.preguntas[0].pregunta;
        btn_resp1.Text = test.preguntas[0].repuestas[0].respuesta;
        btn_resp2.Text = test.preguntas[0].repuestas[1].respuesta;
        btn_resp3.Text = test.preguntas[0].repuestas[2].respuesta;
        btn_resp4.Text = test.preguntas[0].repuestas[3].respuesta;


    }


    protected void btn_resp1_Click(object sender, EventArgs e)
    {

    }

    protected void btn_resp2_Click(object sender, EventArgs e)
    {

    }

    protected void btn_resp3_Click(object sender, EventArgs e)
    {

    }

    protected void btn_resp4_Click(object sender, EventArgs e)
    {

    }
}