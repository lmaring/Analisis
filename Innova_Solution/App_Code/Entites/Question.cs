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
    public string pregunta { get; set; }
    public List<string> repuesta { get; set; }

    public Question(int id, string pregunta, List<string> repuesta)
    {
        this.id = id;
        this.pregunta =pregunta;
        this.repuesta = repuesta;
    }
}