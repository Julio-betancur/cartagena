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

        <link rel="stylesheet" href="css/stylePostulante.css"/>
        <title>Panel de postulante</title>

    </head>

    <body>
        
        <div class="row g-0 p-3 mb-3 shadow-sm" id="header">
            <div class="col-lg-5 d-flex justify-content-around">
                <img class=" img-fluid" src="imagenes/Logo_1.png" alt="Logo cartagena">
            </div>
            <div class="col-lg-7  ">
                <h1 class="text-center  mt-3">Cartagena Consulting Group</h1>
                <p class="fs-4 text-center  ">Creando Conciencia Organizacional</p>
            </div>
        </div>
        
        <main>

        <div class="container__card">

            <div class="card__father">
                <div class="card">
                    <div class="card__front">
                        <div class="bg"></div>
                        <div class="body__card_front">
                            <h1>FASE I</h1>
                        </div>
                    </div>
                    <div class="card__back">
                        <div class="body__card_back">
                            <h1>Windows 10</h1>
                            <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis tenetur nemo accusantium facilis. Hic modi dolores impedit provident quae cumque dolore fugiat corrupti, illo quia, commodi similique dolorem rem? Eligendi!</p>                            
                        </div>                            
                    </div>
                </div>
            </div>

            <div class="card__father">
                <div class="card">
                    <div class="card__front">
                        <div class="bg" style="background-color: #486370;"></div>
                        <div class="body__card_front">
                            <h1>FASE II</h1>
                        </div>
                    </div>
                    <div class="card__back">
                        <div class="body__card_back">
                            <h1>Windows 10</h1>
                            <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis tenetur nemo accusantium facilis. Hic modi dolores impedit provident quae cumque dolore fugiat corrupti, illo quia, commodi similique dolorem rem? Eligendi!</p>
                        </div>                            
                    </div>
                </div>
            </div>

            <div class="card__father">
                <div class="card">
                    <div class="card__front">
                        <div class="bg"></div>
                        <div class="body__card_front">
                            <h1>FASE III</h1>
                        </div>
                    </div>
                    <div class="card__back" style="border-radius: 20px;">
                        <div class="body__card_back">
                            <h1 style="font-size: 20px;">Pruebas</h1>
                            
                              <ul class="lista_pruebas">
                                  <div class="p1">
                                    <li><a href="">Habilidades en Servicio</a></li>
                                  </div>
                                <div class="p2">
                                    <li><a href="">Habilidades Administrativas Parte I</a></li>
                                </div>
                                <div class="p3">
                                    <li><a href="">Habilidades Administrativas Parte II</a></li>
                                </div>
                                <div class="p4">
                                    <li><a href="">Habilidades en Negociación</a></li>
                                </div>
                                
                              </ul>  
                        </div>                            
                    </div>
                </div>
            </div>

        </div>

    </main>
        
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
   
        <!-- Option 1: Bootstrap Bundle with Popper -->
       <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script> -->
    </body>

</html>
