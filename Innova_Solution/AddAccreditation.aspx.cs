using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddAccreditation : System.Web.UI.Page
{
    //Lista para controlar el almacenamiento de los IDs nuevos 
    List<string> controlIdList = new List<string>();
    int counter = 0;
    protected override void LoadViewState(object savedState)
    {
        base.LoadViewState(savedState);
        controlIdList = (List<string>)ViewState["controlList"];
        foreach (string ID in controlIdList)
        {
            counter++;
            TableRow tr = new TableRow();
            tr.ID = ID;
            LiteralControl lineBreak = new LiteralControl();
            PlaceHolder1.Controls.Add(tr);
            PlaceHolder1.Controls.Add(lineBreak);
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Add_Exam(object sender, EventArgs e)
    {
        counter++;
        TextBox tb = new TextBox();
        tb.ID = "TextBox " + counter;
        tb.Text = "Nuevo";
        TableRow tr = new TableRow();
        tr.ID = "TableRow" + counter;
        TableCell Th = new TableCell();
        Th.ID = "" + counter;
        Th.Text = "" + counter;
        TableCell Th2 = new TableCell();
        Th2.ID = "TableCell" + counter;
        Th2.Text = "Nombre de Examen ";
        TableCell Th3 = new TableCell();
        Th3.ID = "TableCell" + counter;
        Th3.Text = "-";
        TableCell Th4 = new TableCell();
        Th4.ID = "TableCell" + counter;
        Th4.Text = "Boton";
        Button btn = new Button();
        btn.ID = "Btn" + counter;
        btn.Text = "Crear";
        btn.Click += new EventHandler(btn_Global_Click);
        Controls.Add(btn);
        tr.Controls.Add(Th);
        tr.Controls.Add(Th2);
        tr.Controls.Add(Th3);
        tr.Controls.Add(Th4);
        Th4.Controls.Add(btn);
        LiteralControl lineBreak = new LiteralControl("<br/>");
        PlaceHolder Ph = new PlaceHolder();
        Ph.ID = "PlaceHolder" + counter;
        PlaceHolder1.Controls.Add(tr);
        PlaceHolder1.Controls.Add(lineBreak);
        controlIdList.Add(tr.ID);
        ViewState["controlList"] = controlIdList;
    }

    protected void btn_Global_Click(object sender, EventArgs e)
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

    protected void btn_quizScrum_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddQuestion.aspx");
    }
}