<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
        
        <!-- Fonts Google -->
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link href="https://fonts.googleapis.com/css2?family=Spartan:wght@300&display=swap" rel="stylesheet" />

        <script src="https://kit.fontawesome.com/cd641feaef.js" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="css/styleRegistro.css" />
        <title>Registro</title>
    </head>

    <body>

        <div class="row g-0 p-3 mb-3 shadow-sm" id="header">
            <div class="col-lg-3 d-flex justify-content-center ">
                <img class=" img-fluid" src="imagenes/Logo_1.png" alt="Logo cartagena">
            </div>
            <div class="col-lg-9  ">
                <h1 class="text-center  mt-3">Cartagena Consulting Group</h1>
                <p class="fs-4 text-center  ">Creando Conciencia Organizacional</p>
            </div>
        </div>


        <h2>Registro</h2>

        <!-- Formulario -->
        <jsp:include page="WEB-INF/paginas/formularios/registroForm.jsp" /> 
         
        <!-- Option 1: Bootstrap Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

        <!-- Iconos FontAwesome-->
        <script src="https://kit.fontawesome.com/7c71069563.js" crossorigin="anonymous"></script>
        
        <!-- Espacio Modal -->
             <jsp:include page="/WEB-INF/paginas/comunes/alertas.jsp" />
        
        <c:if test="${alerta.equals('usuarioregistrado')}">
            <!-- Script mostrar alerta usuario registrado -->
            <script src="js/usuarioRegistradoScript.js"></script>
        </c:if>
            
            <!-- Validacion numeros-->
            <script src="js/validacionNumeros.js"></script>
            
            <!-- Footer -->
            <footer class="text-white mt-3" style="background-color:#546e7a;">

                <div class="container">

                    <div class="container2">
                        <!--Contacto-->
                        <div class="contacto">
                            <p><i class="email fas fa-envelope-open-text fa-2x" style="padding-right: 12px;"></i>claudiocartagena@cartagenacg.com.co</p>  
                            <p><i class="cel fas fa-mobile fa-2x" style="padding-right: 20px;"></i>310 403 5424</p>            
                        </div>

                        <!-- Section: Social media -->

                        <div class="social social1">            

                            <a class="btn btn-primary btn-sm" style="background-color: #1c2d35" href="#!" role="button"><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-primary btn-sm" style="background-color: #1c2d35" href="#!" role="button"><i class="fab fa-linkedin-in"></i></a>

                        </div>
                    </div>
                </div>

                <!-- Copyright -->
                <div class="copyright" style="background-color:#486370">
                    <h6>2015 Cartagena Consulting Group</h6>
                    <h6>Todos los derechos reservados</h6>
                </div>

            </footer>
            
    </body>
</html>