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
                    <a class="auto-style1" href="#"><span><img alt="Logo" src="Imagenes/innovaLogo.jpg" height="40 width="40" /></span> </a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a href="HomeUser.aspx">Menu Principal</a></li>
                        <li><a href="Accreditation.aspx">Acreditaciones</a></li>
                        <li><a href="UserInfo.aspx">Ajuste Cuenta</a></li>
                        <li><a href="Grades.aspx">Record de Notas</a></li>
                        <li><a href="Index.aspx">Salir</a></li>
                    </ul>
                </div>
            </div>
        </div>

    <div class="container">
        <br />
        <br />
        <br />
        <br />
        <h2>Acerca de nosotros</h2>
        <br>
        <br>
         <p class="text-left"> Innova Solutions se encarga en capacitar personas en procesos de capacitacion como lo
            que seria institutos y tienen convenios con varias empresas para certificar como lo es en 
            cisco, Adobe, PMP, ITIL, COBIT, SCRUM, SIX SIGMA, Manipulacion de Alimento y pruebas de colegios 
            profesionales. Cuando se termina el curso cierto estudiantes decian que le hacia falta un practica del
            curso una vez terminado entonces la idea es crear un apliccaion departe una particio activa donde se puedan
            logear y realizar cierto cuestionaros con preguntas aleatorias en diferentes areas y el usuario tiene la 
            capacidad selecionarla sobre una base de datos de preguntas pero solo se muestran 10 por cuestionaro y son
            respuestas de si o no, tambien tiene la capacidad de respuesta multiple. tener la capacidad preguntas, nota 
            total, tiempo maximo de contestar ciertas preguntas. maximo de nota para aprovar el examen y que tipo de cuestionario es.</p>
        <br>
        <br>
        <br>
        <div class = "globalImage">

<div class="gallery">
  
    <img src="Imagenes/itil.png" alt="Itil" width="600" height="400">
  
  <div class="desc" width="450"><p>Es importante destacar el esfuerzo que hacen muchas organizaciones al querer brindar servicios 
      de calidad a través de las Mesas de Ayuda (help desk) que facilitan la atención de las solicitudes tanto de usuarios 
      como de clientes  ya sea por distintos canales como el telefónico, web, portal, chat, correo entre otros. Por otro 
      lado lo que hace diferente al Service Desk  es la evidencia de que el negocio ha adaptado a ITIL como framework o 
      marco de trabajo para sus diferentes operaciones, es decir, que ha transformado al departamento de TI para darle 
      una orientación al servicio y a su vez lo alinea con los procesos Core del negocio.</p></div>
</div>

            <div class="gallery" >
    <img src="Imagenes/cisco-icon.png" alt="Cisco" width="600" height="500">
  <div class="desc" width="450"><p> Los Técnicos CCNA son capaces de instalar y configurar redes de área local (LAN),
      redes de área extensa (WAN) y servicios de acceso a redes. Las posiciones profesionales más frecuentes
      para un técnico CCNA son las de Ingeniero de soporte técnico, Técnico de campo formando parte de un equipo
      especializado en redes y Técnico comercial de preventa de instalaciones.
      Existen cinco niveles de certificación:<br> 
      <ul>
          <li>Associate (Asociado)</li>
          <li>Professional (Profesional)</li>
          <li>Expert (Experto)</li>
          <li>Architect (Arquitecto)</li>
      </ul>

                    </p></div>
</div>

<div class="gallery">
 
    <img src="Imagenes/PMP.png" alt="PmP" width="600" height="400">

  <div class="desc"><p>La certificación Project Management está enfocada a cubrir la creciente necesidad de contar
      con personal cualificado en este campo y, a su vez, con el fin de profesionalizar a directivos y gerentes.
      Gracias a ella, directivos o aspirantes a serlo pueden profesionalizarse en la gestión de proyectos con todas 
      las garantías, abarcando también el desarrollo de competencias personales y de rendimiento acordes con dicho rol.</p></div>
</div>

    </div>


    </form>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>
   