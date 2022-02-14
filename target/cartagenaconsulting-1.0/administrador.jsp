<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" 
          integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

        <!-- Fonts Google -->
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link href="https://fonts.googleapis.com/css2?family=Spartan:wght@300&display=swap" rel="stylesheet" />

        <script src="https://kit.fontawesome.com/cd641feaef.js" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="css/style.css" />
        <title>Panel de administracion</title>
        <%   
            
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); //Borrar directivas memoria cache
            response.setHeader("Pragm", "no-cache");
            response.setDateHeader("Expires", 0); //fecha y hora para decir el tiempo de respuesta caduco
            if(request.getSession().getAttribute("usuario") == null){
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
        %>
    </head>

    <body>
        <nav class="navbar navbar-expand-lg" style="background-color: #486370;">
            <a class="navbar-brand" href="#" style="color: #ffffff;">Panel de Administrador</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="/administrador.jsp" style="color: #ffffff;">Inicio <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="${pageContext.request.contextPath}/Registro" style="color: #ffffff;">Registro <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                            <a class="nav-link" href="ControladorPostulante?postulante=panel_postulante" style="color: #ffffff;">Postulante <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="ControladorListarRegistro?resumen=panel_administrador" target="miContenedor" style="color: #ffffff;">Resumen <span class="sr-only">(current)</span></a>
                    </li>
                </ul>
                <div class="btn-group">
                    <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                            aria-expanded="false">
                        <strong>Nombre de Usuario: ${usuario.nombre}</strong>
                    </button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#"><i class="fas fa-user"></i></a>
                        <a class="dropdown-item" href="#" style="font-size:15px;">Estatus: ${usuario.status}</a>
                        <a class="dropdown-item" href="#" style="font-size:15px;">Edad: ${usuario.edad}</a>
                        <a class="dropdown-item" href="#" style="font-size:15px;">Fecha Registro: ${usuario.fechaRegistro}</a>
                        <div class="dropdown-divider"></div>
                        <a href="${pageContext.request.contextPath}/CerrarSesion" class="btn btn-secondary"
                           style="display: flex; margin: 0 50px 0 50px; justify-content: center;"><strong>Cerrar Sesion</strong></a>
                    </div>
                </div>    
            </div>
        </nav>
                    
                    <div class="m-3" style="height: 900px;">
                        <iframe name="miContenedor" style="height: 100%; width: 100%;" frameBorder="1"></iframe>
                    </div>            
        
        <h1>Bienvenido ${usuario.nombre}!</h1>
        <h2>Estatus: ${usuario.status}</h2>
        <h2>Edad: ${usuario.edad}</h2>
        <h2>Fecha de registro: ${usuario.fechaRegistro}</h2>
        
        
        <a href="${pageContext.request.contextPath}/Listar" class="btn btn-secondary">Panel Administrador</a>
     
        
        
        <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    </body>

</html>