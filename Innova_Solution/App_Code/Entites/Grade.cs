using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Grade
/// </summary>
public class Grade
{
    public int idStudent { get; set; }
    public int nota { get; set; }
    public int idTest { get; set; }

    public Grade(int idStudent, int nota, int idTest)
    {
        this.idStudent = idStudent;
        this.nota = nota;
        this.idTest = idTest;
    }
}