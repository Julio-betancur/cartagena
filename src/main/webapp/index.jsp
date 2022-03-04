<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />

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
        <title>Login</title>

        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); //Borrar directivas memoria cache
            response.setHeader("Pragm", "no-cache");
            response.setDateHeader("Expires", 0); //fecha y hora para decir el tiempo de respuesta caduco
        %>
    </head>

    <body>
        <section>
            <div class="row g-0">
                <div class="
                     col-lg-7
                     d-flex
                     flex-column
                     justify-content-center
                     align-items-center
                     ">
                    <div class="logo mb-4 img-fluid">
                        <img src="imagenes/Logo_1.png" alt="Logo cartagena" />
                    </div>
                    <div class="texto">
                        <h1 class="text-center" style="color: white;">Cartagena Consulting Group</h1>
                        <p class="text-center fs-4" style="color: white;">Creando Conciencia Organizacional</p>
                    </div>
                </div>
                <div class="col-lg-5 d-flex rigth min-vh-100">
                    <div class="px-lg-5 py-lg-4 p-4 w-100 align-self-center">
                        <h1 class="mb-4 text-center" style="color: white;">Bienvenid@</h1>

                        <!-- Espacio Formulario login -->
                        <jsp:include page="WEB-INF/paginas/formularios/loginForm.jsp" />
                    </div>

                </div>     
        </section>
        <!-- Option 1: Bootstrap Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

        <c:if test="${alerta.equals('userpassincorrect')}">
            <!-- Script mostrar alerta cedula o contra incorrecta -->
            <script src="js/loginScript.js"></script>
        </c:if>

    </body>

</html>