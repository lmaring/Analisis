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
    int catPreg = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        test = (Tests)Session["Test"];
        btn_enviar.Visible=false;
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
        catPreg = (int)Session["cantPreg"];
        pregunta = (int)Session["pregunta"];
        if (catPreg<=catPregunta)
        {
            if (rb_resp1.Checked)
            {
                p1 = test.preguntas[pregunta].repuestas[0].tipo;
                if (p1.Equals("C"))
                {
                    pCorrecta = (int)Session["correctas"];
                    pCorrecta = pCorrecta + 1;      
                    Session["correctas"] = pCorrecta;

                }
                else
                {
                    pIncorrecta = pIncorrecta + 1;
                }
                pregunta = pregunta + 1;
                Session["pregunta"] = pregunta;
                catPreg = catPreg + 1;
                Session["cantPreg"] = catPreg;
                if(pregunta< catPregunta)
                {
                    setBtn(pregunta);
                }
                else
                {
                    Response.Write("<script>alert('Se acabo el examen');</script>");
                    btn_enviar.Visible = true;
                    Preg.Visible=false;
                    rb_resp1.Visible = false;
                    rb_resp2.Visible = false;
                    rb_resp3.Visible = false;
                    rb_resp4.Visible = false;
                    btn_ingreso.Visible = false;
                }
                
            }
            else if (rb_resp2.Checked)
            {
                p2 = test.preguntas[pregunta].repuestas[1].tipo;
                if (p2.Equals("C"))
                {
                    pCorrecta = (int)Session["correctas"];
                    pCorrecta = pCorrecta + 1;
                    Session["correctas"] = pCorrecta;
                }
                else
                {
                    pIncorrecta = pIncorrecta + 1;
                }
                pregunta = pregunta + 1;
                Session["pregunta"] = pregunta;
                catPreg = catPreg + 1;
                Session["cantPreg"] = catPreg;
                if (pregunta < catPregunta)
                {
                    setBtn(pregunta);
                }
                else
                {
                    Response.Write("<script>alert('Se acabo el examen');</script>");
                    btn_enviar.Visible = true;
                    Preg.Visible = false;
                    rb_resp1.Visible = false;
                    rb_resp2.Visible = false;
                    rb_resp3.Visible = false;
                    rb_resp4.Visible = false;
                    btn_ingreso.Visible = false;
                }
            }
            else if (rb_resp3.Checked)
            {
                p3 = test.preguntas[pregunta].repuestas[2].tipo;
                if (p3.Equals("C"))
                {
                    pCorrecta = (int)Session["correctas"];
                    pCorrecta = pCorrecta + 1;
                    Session["correctas"] = pCorrecta;
                }
                else
                {
                    pIncorrecta = pIncorrecta + 1;
                }
                pregunta = pregunta + 1;
                Session["pregunta"] = pregunta;
                catPreg = catPreg + 1;
                Session["cantPreg"] = catPreg;
                if (pregunta < catPregunta)
                {
                    setBtn(pregunta);
                }
                else
                {
                    Response.Write("<script>alert('Se acabo el examen');</script>");
                    btn_enviar.Visible = true;
                    Preg.Visible = false;
                    rb_resp1.Visible = false;
                    rb_resp2.Visible = false;
                    rb_resp3.Visible = false;
                    rb_resp4.Visible = false;
                    btn_ingreso.Visible = false;
                }
            }
            else if (rb_resp4.Checked)
            {
                p4 = test.preguntas[pregunta].repuestas[3].tipo;
                if (p4.Equals("C"))
                {
                    pCorrecta = (int)Session["correctas"];
                    pCorrecta = pCorrecta + 1;
                    Session["correctas"] = pCorrecta;
                }
                else
                {
                    pIncorrecta = pIncorrecta + 1;
                }
                pregunta = pregunta + 1;
                Session["pregunta"] = pregunta;
                catPreg = catPreg + 1;
                Session["cantPreg"] = catPreg;
                if (pregunta < catPregunta)
                {
                    setBtn(pregunta);
                }
                else
                {
                    Response.Write("<script>alert('Se acabo el examen');</script>");
                    btn_enviar.Visible = true;
                    Preg.Visible = false;
                    rb_resp1.Visible = false;
                    rb_resp2.Visible = false;
                    rb_resp3.Visible = false;
                    rb_resp4.Visible = false;
                    btn_ingreso.Visible = false;
                }
            }
        }
        else{


        }

    }

    public int calculo(int cant, int correctas)
    {
        int nota;
        nota = (correctas * 100) / cant;
        return nota;
    }

    protected void btn_enviar_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Se Envio la nota');</script>");
        catPregunta = test.preguntas.Count;
        User usuario = (User)Session["User"];
        pCorrecta = (int)Session["correctas"];
        int nota = calculo(catPregunta, pCorrecta);
        aux.addNota(usuario.Id, test.id, nota);
        Response.Redirect("Accreditation.aspx");
    }
}