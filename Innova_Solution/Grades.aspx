<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Grades.aspx.cs" Inherits="Grades" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="resources/css/estilos.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <title>Ver Calificaciones</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class ="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"><span><img alt="Logo" src="Imagenes/innovaLogo.jpg" height="30" width="30" /></span> </a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="HomeUser.aspx">Menu Principal</a></li>
                        <li><a href="AddAccreditation.aspx">Acreditaciones</a></li>
                        <li><a href="AdminInfo.aspx">Ajuste Cuenta</a></li>
                        <li class="active"><a href="Grades.aspx">Record de Notas</a></li>
                        <li><a href="Index.aspx">Salir</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="container">
        <br />
        <br />
        <h1>Mis Notas</h1>
        <%--<table class="table">
            <thead>
              <tr>
                <th>#</th>
                <th>Acreditación</th>
                <th>Calificación</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="row">1</th>
                <td><asp:Label ID="lbl_acred1" runat="server" Text="CCNA"></asp:Label></td>
                <td><asp:Label ID="lbl_calif1" runat="server" Text="100"></asp:Label></td>
                <td></td>
              </tr>
            </tbody>
        </table>--%>
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            <%--<asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnSelectedIndexChanging="GridView1_SelectedIndexChanging">
                    <AlternatingRowStyle BackColor="White" />
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>--%>
    </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflatxe.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>
