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
    int pCorrecta = 0;
    int pIncorrecta = 0;
    string p1 = "";
    string p2 = "";
    string p3 = "";
    string p4 = "";
    int catPregunta = 0;
    int catPreg = 1;

    protected void Page_Load(object sender, EventArgs e)
    {
        test = (Tests)Session["Test"];
        setBtn(pregunta);
    }

    public void setBtn(int preg)
    {
        Preg.Text = test.preguntas[preg].pregunta;
        rb_resp1.Text = test.preguntas[preg].repuestas[0].respuesta;
        rb_resp2.Text = test.preguntas[preg].repuestas[1].respuesta;
        rb_resp3.Text = test.preguntas[preg].repuestas[2].respuesta;
        rb_resp4.Text = test.preguntas[preg].repuestas[3].respuesta;
    }


    protected void btn_ingreso_Click(object sender, EventArgs e)
    {

        catPregunta = test.preguntas.Count;
        if (catPreg < catPregunta)
        {
            if (rb_resp1.Checked)
            {
                p1 = test.preguntas[pregunta].repuestas[0].tipo;
                if (p1.Equals("C"))
                {
                    pCorrecta = pCorrecta + 1;
                }
                else
                {
                    pIncorrecta = pIncorrecta + 1;
                }
                pregunta = pregunta + 1;
                catPreg = catPreg + 1;
                setBtn(pregunta);
            }
            else if (rb_resp2.Checked)
            {
                p2 = test.preguntas[pregunta].repuestas[0].tipo;
                if (p2.Equals("C"))
                {
                    pCorrecta = pCorrecta + 1;
                }
                else
                {
                    pIncorrecta = pIncorrecta + 1;
                }
                pregunta = pregunta + 1;
                catPreg = catPreg + 1;
                setBtn(pregunta);
            }
            else if (rb_resp3.Checked)
            {
                p3 = test.preguntas[pregunta].repuestas[0].tipo;
                if (p3.Equals("C"))
                {
                    pCorrecta = pCorrecta + 1;
                }
                else
                {
                    pIncorrecta = pIncorrecta + 1;
                }
                pregunta = pregunta + 1;
                catPreg = catPreg + 1;
                setBtn(pregunta);
            }
            else if (rb_resp4.Checked)
            {
                p4 = test.preguntas[pregunta].repuestas[0].tipo;
                if (p4.Equals("C"))
                {
                    pCorrecta = pCorrecta + 1;
                }
                else
                {
                    pIncorrecta = pIncorrecta + 1;
                }
                pregunta = pregunta + 1;
                catPreg = catPreg + 1;
                setBtn(pregunta);
            }
        }
        else
        {
            Response.Write("<script>alert('Contraseña o Usuario Incorrecto!');</script>");
        }

    }
}