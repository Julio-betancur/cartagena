<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<form class="was-validated row justify-content-center" action="${pageContext.request.contextPath}/ConLog"
              method="POST">

            <div class="col-lg-5 ">

                <!--Cedula-->
                <div class="d-flex mb-3">
                    <div class="d-flex align-items-center justify-content-center rounded-start icono">
                        <i class="far fa-address-card fa-lg"></i>
                    </div>
                    <div class="w-100 form-floating form">
                        <input type="number" class="form-control " id="cedula" placeholder="Cédula" required>
                        <label for="cedula">Cédula</label>
                    </div>
                </div>

                <!--Nombre-->
                <div class="d-flex mb-3">
                    <div class="d-flex align-items-center justify-content-center rounded-start icono">
                        <i class="far fa-user fa-lg"></i>
                    </div>
                    <div class="w-100 form-floating form">
                        <input type="text" class="form-control " id="nombre" placeholder="nombre" required>
                        <label for="nombre">Nombre</label>
                    </div>
                </div>

                <!--Primer apellido-->
                <div class="d-flex mb-3">
                    <div class="d-flex align-items-center justify-content-center rounded-start icono">
                        <i class="fas fa-signature fa-lg"></i>
                    </div>
                    <div class="w-100 form-floating form">
                        <input type="text" class="form-control " id="apellido1" placeholder="apellido1" required>
                        <label for="apellido1">Primer apellido</label>
                    </div>
                </div>

                <!--Segundo apellido-->
                <div class="d-flex mb-3">
                    <div class="d-flex align-items-center justify-content-center rounded-start icono">
                        <i class="fas fa-signature fa-lg"></i>
                    </div>
                    <div class="w-100 form-floating form">
                        <input type="text" class="form-control " id="apellido2" placeholder="apellido2" required>
                        <label for="apellido2">Segundo apellido</label>
                    </div>
                </div>

                <!--Estado civil-->
                <div class="d-flex mb-3">
                    <div class="d-flex align-items-center justify-content-center rounded-start icono">
                        <i class="fas fa-people-arrows"></i>
                    </div>

                    <div class="w-100 form-floating">
                        <select class="form-select" id="estadoCivil">
                            <option value="soltero">Solter(a)</option>
                            <option value="casado">Casado(a)</option>
                            <option value="viudo">Viudo(a)</option>
                            <option value="divorciado">Divorciado(a)</option>
                            <option value="unionlibre">Unión libre</option>
                        </select>
                        <label for="estadoCivil">Seleccione su estado civil</label>
                    </div>
                </div>

                <!--Fecha nacimiento-->
                <div class="d-flex mb-3">
                    <div class="d-flex align-items-center justify-content-center rounded-start icono">
                        <i class="fas fa-calendar-day fa-lg"></i>
                    </div>
                    <div class="w-100 form-floating form">
                        <input type="date" class="form-control " id="fechanacimiento" placeholder="fechanacimiento" required>
                        <label for="fechanacimiento">Seleccione su fecha de nacimiento</label>
                    </div>
                </div>

                <!--genero-->
                <div class="d-flex mb-3">
                    <div class="d-flex align-items-center justify-content-center rounded-start icono">
                        <i class="fas fa-venus-mars fa-lg"></i>
                    </div>
                    <div class=" ms-3 form">
                        <div class="form-check">
                            <input class="form-check-input " type="radio" name="generos" id="femenino" checked>
                            <label class="form-check-label" for="femenino">
                                Femenino
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="generos" id="masculino" >
                            <label class="form-check-label" for="masculino">
                                Masculino
                            </label>
                        </div>
                    </div>
                </div>    

            </div>

            <div class="col-lg-5 ">

                <!-- Columna dos -->

                <!--municipio-->
                <jsp:include page="municipioInput.jsp" />

                <!--Nivel educativo-->
                <div class="d-flex mb-3">
                    <div class="d-flex align-items-center justify-content-center rounded-start icono">
                        <i class="fas fa-user-graduate fa-lg"></i>
                    </div>
                    <div class="w-100 form-floating">
                        <select class="form-select" id="niveleducativo">
                            <option value="bachillerato">Bachillerato</option>
                            <option value="pregrado">Pregrado</option>
                            <option value="especializacion">Especialización</option>
                            <option value="maestria">Maestría</option>
                            <option value="doctorado">Doctorado</option>
                        </select>
                        <label for="niveleducativo">Seleccione su nivel educativo</label>
                    </div>
                </div>

                <!--Ocupacion-->
                <div class="d-flex mb-3">
                    <div class="d-flex align-items-center justify-content-center rounded-start icono">
                        <i class="fas fa-user-md fa-lg"></i>
                    </div>
                    <div class="w-100 form-floating form">
                        <input type="text" class="form-control " id="ocupacion" placeholder="ocupacion" required>
                        <label for="ocupacion">Ocupacion</label>
                    </div>
                </div>

                <!--Area de trabajo-->
                <div class="d-flex mb-3">
                    <div class="d-flex align-items-center justify-content-center rounded-start icono">
                        <i class="fas fa-briefcase fa-lg"></i>
                    </div>
                    <div class="w-100 form-floating form">
                        <input type="text" class="form-control " id="areatrabajo" placeholder="Area de trabajo" required>
                        <label for="areatrabajo">Area de trabajo</label>
                    </div>
                </div>

                <!--Empresa-->
                <div class="d-flex mb-3">
                    <div class="d-flex align-items-center justify-content-center rounded-start icono">
                        <i class="far fa-building fa-lg"></i>
                    </div>
                    <div class="w-100 form-floating form">
                        <input type="text" class="form-control " id="empresa" placeholder="Empresa" required>
                        <label for="empresa">Empresa</label>
                    </div>
                </div>

                <!--Celular-->
                <div class="d-flex mb-3">
                    <div class="d-flex align-items-center justify-content-center rounded-start icono">
                        <i class="fas fa-mobile-alt fa-lg"></i>
                    </div>
                    <div class="w-100 form-floating form">
                        <input type="number" class="form-control " id="celular" placeholder="Numero de celular" required>
                        <label for="celular">Numero de celular</label>
                    </div>
                </div>

                <!--email-->
                <div class="d-flex mb-3">
                    <div class="d-flex align-items-center justify-content-center rounded-start icono">
                        <i class="fas fa-at fa-lg"></i>
                    </div>
                    <div class="w-100 form-floating form">
                        <input type="email" class="form-control " id="email" placeholder="Correo electronico" required>
                        <label for="email">Correo electronico</label>
                    </div>
                </div>


            </div>


        </form>
