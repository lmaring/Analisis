using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddQuestion : System.Web.UI.Page
{

    TestServices aux = new TestServices();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void imgBack_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("AddAccreditation.aspx");
    }
    protected void btn_guardarPregunta_Click(object sender, EventArgs e)
    {
        aux.addPregunta(txtEnunciado.Text);
        if (rd_btn1.Checked)
        {
            aux.addRespuesta(txt_resp1.Text, "C");
            aux.addRespuesta(txt_resp2.Text, "I");
            aux.addRespuesta(txt_resp3.Text, "I");
            aux.addRespuesta(txt_resp4.Text, "I");
        }
        else if (rd_btn2.Checked)
        {
            aux.addRespuesta(txt_resp1.Text, "I");
            aux.addRespuesta(txt_resp2.Text, "C");
            aux.addRespuesta(txt_resp3.Text, "I");
            aux.addRespuesta(txt_resp4.Text, "I");
        }
        else if (rd_btn3.Checked)
        {
            aux.addRespuesta(txt_resp1.Text, "I");
            aux.addRespuesta(txt_resp2.Text, "I");
            aux.addRespuesta(txt_resp3.Text, "C");
            aux.addRespuesta(txt_resp4.Text, "I");
        }
        else if(rd_btn4.Checked)
        {
            aux.addRespuesta(txt_resp1.Text, "I");
            aux.addRespuesta(txt_resp2.Text, "I");
            aux.addRespuesta(txt_resp3.Text, "I");
            aux.addRespuesta(txt_resp4.Text, "C");
        }
    }

}