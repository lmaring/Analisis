using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddAccreditation : System.Web.UI.Page
{
    
    protected void Page_Load()
    {
        if (counter == 1)
        {
            TrBtn1.Visible = true;
        }else if(counter == 2)
        {
            TrBtn1.Visible = true;
            TrBtn2.Visible = true;
        }
    }


    protected void Save_Changes(object sender, EventArgs e)
    {
        counter = 0;
    }
    static int counter = 0;
    protected void Add_Exam(object sender, EventArgs e)
    {
        counter++;
        if (counter == 1)
        {
         TrBtn1.Visible = true;
        }
        else if(counter == 2)
        {
         TrBtn2.Visible = true;
        }
        
    }

    protected void btn_Global_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddQuestion.aspx");
    }

    protected void btn_Examen_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddQuestion.aspx");
    }

    protected void btn_ITIL_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddQuestion.aspx");
    }

    protected void btn_CCNA_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddQuestion.aspx");
    }

    protected void btn_quizPMP_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddQuestion.aspx");
    }

    protected void btn_SCRUM_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddQuestion.aspx");

    }
}