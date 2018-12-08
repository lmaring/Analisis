using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Test
/// </summary>
public class Tests
{
    public int id { get; set; }
    public string nombre { get; set; }
    public List<Question> preguntas { get; set; }

    public Tests(int id, string nombre)
    {
        this.id = id;
        this.nombre = nombre;
    }
}