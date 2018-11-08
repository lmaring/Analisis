using System;

public class User
{
    public string UserName { get; set; }
    public string PassWord { get; set; }
    public int Id { get; set; }
    public string mail { get; set; }
    public int telefono { get; set; }
    public string profesion { get; set; }
    public string vivienda { get; set; }

    public User(int id, string userName, string passWord, string mail, int telefono, string profesion, string vivienda)
    {
         UserName = userName;
        PassWord = passWord ;
        Id = id;
        this.mail = mail ;
        this.telefono = telefono;
        this.profesion = profesion ;
        this.vivienda = vivienda;
    }
}