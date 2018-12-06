using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Answer
/// </summary>
public class Answer
{
    public int id { get; set; }
    public int idPregunta { get; set; }
    public string tipo { get; set; }
    public string respuesta { get; set; }

    public Answer(int id, int idPregunta, string tipo, string respuesta)
    {
        this.id = id;
        this.idPregunta = idPregunta;
        this.tipo = tipo;
        this.respuesta = respuesta;
    }
}