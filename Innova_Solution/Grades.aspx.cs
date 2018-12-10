using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Grades : System.Web.UI.Page
{
    TestServices aux = new TestServices();
    List<Grade> notas = new List<Grade>();
    Grade grade = null;

    protected void Page_Load(object sender, EventArgs e)
    {
        User usuario = (User)Session["User"];
        notas = aux.selectNotas(usuario.Id);
            grade =notas[i];
            GridView1.DataSource = notas;
    }
}