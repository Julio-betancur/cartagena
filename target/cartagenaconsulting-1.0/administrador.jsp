<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
              crossorigin="anonymous" />

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
        <h1>Bienvenido ${usuario.nombre}!</h1>
        <h2>Estatus: ${usuario.status}</h2>
        <h2>Edad: ${usuario.edad}</h2>
        <h2>Fecha de registro: ${usuario.fechaRegistro}</h2>

        <a href="${pageContext.request.contextPath}/CerrarSesion" class="btn btn-secondary">Cerrar Sesion</a>

        <a href="${pageContext.request.contextPath}/Registro" class="btn btn-secondary">Registro usuario</a>
     
        
        
        <!-- Option 1: Bootstrap Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    </body>

</html>