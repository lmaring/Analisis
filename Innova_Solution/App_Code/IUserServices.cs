using System.Collections.Generic;

public interface IUserServices
{
    bool CreateUser(string user, string pass, int id, string mail, int telefono, string profesion, string vivienda);
    User Login(string user, string pass);
    bool UserNameFreee(string user, List<User> Users);
    int lastId();
}