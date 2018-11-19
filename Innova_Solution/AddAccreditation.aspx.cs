using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddAccreditation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_ITIL_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddQuestion.aspx");
    }

    protected void btn_CCNA_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddQuestion.aspx");
    }

    protected void btn_quizScrum_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddQuestion.aspx");
    }
}