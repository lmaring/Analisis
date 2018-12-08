using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddAccreditation : System.Web.UI.Page
{
    
    Tests test = null;
    protected void Page_PreInt()
    {
        List<string> keys = Request.Form.AllKeys.Where(key => key.Contains("Tabla dinimica")).ToList();
        int i = 1;
        foreach (string key in keys)
        {
            this.CreateTableRow("Tabla dinimica" + i);
             i++;
        }
    }

    private void CreateTableRow(string id)
    {
        TableRow tr = new TableRow();
        tr.ID = id;
        pnlTableRows.Controls.Add(tr);
        TableCell Th = new TableCell();
        Th.ID = "1";
        Th.Text = "4";
        TableCell Th2 = new TableCell();
        Th2.ID = "TableCell1";
        Th2.Text = " ";
        TableCell Th3 = new TableCell();
        Th3.ID = "TableCell2";
        Th3.Text = "-";
        TableCell Th4 = new TableCell();
        Th4.ID = "TableCell3";
        Th4.Text = "Boton";
        Button btn = new Button();
        btn.ID = "Btn1";
        btn.Text = "Crear";
        TextBox tb = new TextBox();
        tb.ID = "TextBox1";
        tb.Text = "Ingrese Examen";
        btn.Click += new EventHandler(btn_Global_Click);
        Controls.Add(btn);
        tr.Controls.Add(Th);
        tr.Controls.Add(Th2);
        tr.Controls.Add(Th3);
        tr.Controls.Add(Th4);
        Th4.Controls.Add(btn);
        Th2.Controls.Add(tb);
        LiteralControl lineBreak = new LiteralControl("<br />");
        pnlTableRows.Controls.Add(lineBreak);
    }

    protected void Add_Exam(object sender, EventArgs e)
    {
        int index = pnlTableRows.Controls.OfType<TableRow>().ToList().Count+1;
        this.CreateTableRow("Tabla dinimica" + index);

    }

    protected void Save_Changes(object sender, EventArgs e)
    {

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