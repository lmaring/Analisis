<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomeUser.aspx.cs" Inherits="HomeUser" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <!-- Bootstrap CSS -->
   <%-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />--%>
    <link href="resources/css/estilos.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />

    <title>Menu Principal</title>
    <style type="text/css">
        .auto-style1 {
            float: left;
            height: 50px;
            padding: 15px 15px;
            font-size: 18px;
            line-height: 20px;
            width: 27px;
        }
    </style>
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
                    <a class="auto-style1" href="#"><span><img alt="Logo" src="Imagenes/innovaLogo.jpg" height="30 width="30" /></span> </a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a href="HomeUser.aspx">Menu Principal</a></li>
                        <li><a href="Accreditation.aspx">Acreditaciones</a></li>
                        <li><a href="UserInfo.aspx">Ajuste Cuenta</a></li>
                        <li><a href="Index.aspx">Salir</a></li>
                    </ul>
                </div>
            </div>
        </div>

    <div class="container">
        <br />
        <br />
        <br />
        <h1>Menu Principal</h1>
         <p class="text-left"> Innova Solutions se encarga en capacitar personas en procesos de capacitacion como lo
            que seria institutos y tienen convenios con varias empresas para certificar como lo es en 
            cisco, Adobe, PMP, ITIL, COBIT, SCRUM, SIX SIGMA, Manipulacion de Alimento y pruebas de colegios 
            profesionales. Cuando se termina el curso cierto estudiantes decian que le hacia falta un practica del
            curso una vez terminado entonces la idea es crear un apliccaion departe una particio activa donde se puedan
            logear y realizar cierto cuestionaros con preguntas aleatorias en diferentes areas y el usuario tiene la 
            capacidad selecionarla sobre una base de datos de preguntas pero solo se muestran 10 por cuestionaro y son
            respuestas de si o no, tambien tiene la capacidad de respuesta multiple. tener la capacidad preguntas, nota 
            total, tiempo maximo de contestar ciertas preguntas. maximo de nota para aprovar el examen y que tipo de cuestionario es.</p>
    </div>

    </form>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>
   