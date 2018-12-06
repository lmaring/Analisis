using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Questions
/// </summary>
public class Question
{
    public int id { get; set; }
    public int idPrueba { get; set; }
    public string pregunta { get; set; }
    public string categoria { get; set; }
    public List<Answer> repuestas { get; set; }

    public Question(int id, int idPrueba, string pregunta, string categoria)
    {
        this.id = id;
        this.idPrueba = idPrueba;
        this.pregunta = pregunta ;
        this.categoria = categoria;
    }
}