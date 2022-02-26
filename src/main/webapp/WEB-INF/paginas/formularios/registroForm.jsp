<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<form class="was-validated row justify-content-center mt-5 mb-5" action="${pageContext.request.contextPath}/RegistrarUsuario"
      method="POST">

    <div class="col-lg-5">

        <!--Cedula-->
        <div class="d-flex mb-3">
            <div class="d-flex align-items-center justify-content-center rounded-start icono">
                <i class="far fa-address-card fa-lg"></i>
            </div>
            <div class="w-100 form-floating form">
                <input type="text" class="form-control " id="cedula" name="cedula" placeholder="Cédula" minlength="3" maxlength="20" required>
                <label for="cedula">Cédula</label>
            </div>
        </div>

        <!--Nombre-->
        <div class="d-flex mb-3">
            <div class="d-flex align-items-center justify-content-center rounded-start icono">
                <i class="far fa-user fa-lg"></i>
            </div>
            <div class="w-100 form-floating form">
                <input type="text" class="form-control " id="nombre" name="nombre" placeholder="nombre" minlength="3" maxlength="20" required>
                <label for="nombre">Nombre</label>
            </div>
        </div>

        <!--Primer apellido-->
        <div class="d-flex mb-3">
            <div class="d-flex align-items-center justify-content-center rounded-start icono">
                <i class="fas fa-signature fa-lg"></i>
            </div>
            <div class="w-100 form-floating form">
                <input type="text" class="form-control " id="apellido1" name="apellido1" placeholder="apellido1" maxlength="20" required>
                <label for="apellido1">Primer apellido</label>
            </div>
        </div>

        <!--Segundo apellido-->
        <div class="d-flex mb-3">
            <div class="d-flex align-items-center justify-content-center rounded-start icono">
                <i class="fas fa-signature fa-lg"></i>
            </div>
            <div class="w-100 form-floating form">
                <input type="text" class="form-control " id="apellido2" name="apellido2" placeholder="apellido2" maxlength="20" required>
                <label for="apellido2">Segundo apellido</label>
            </div>
        </div>

        <!--Estado civil-->
        <div class="d-flex mb-3">
            <div class="d-flex align-items-center justify-content-center rounded-start icono">
                <i class="fas fa-people-arrows"></i>
            </div>

            <div class="w-100 form-floating">
                <select class="form-select" id="estadoCivil" name="estadoCivil">
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
                <input type="date" class="form-control " id="fechaNacimiento" name="fechaNacimiento" placeholder="fechanacimiento" required>
                <label for="fechaNacimiento">Seleccione su fecha de nacimiento</label>
            </div>
        </div>

        <!--genero-->
        <div class="d-flex mb-3">
            <div class="d-flex align-items-center justify-content-center rounded-start icono">
                <i class="fas fa-venus-mars fa-lg"></i>
            </div>
            <div class=" ms-3 form">
                <div class="form-check">
                    <input class="form-check-input " type="radio"  name="generos" id="femenino" value="femenino" checked>
                    <label class="form-check-label" for="femenino">
                        Femenino
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="generos" id="masculino" value="masculino">
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
        <jsp:include page="municipioInput.jsp"/>

        <!--Nivel educativo-->
        <div class="d-flex mb-3">
            <div class="d-flex align-items-center justify-content-center rounded-start icono">
                <i class="fas fa-user-graduate fa-lg"></i>
            </div>
            <div class="w-100 form-floating">
                <select class="form-select" id="nivelEducativo" name="nivelEducativo">
                    <option value="bachillerato">Bachillerato</option>
                    <option value="pregrado">Pregrado</option>
                    <option value="especializacion">Especialización</option>
                    <option value="maestria">Maestría</option>
                    <option value="doctorado">Doctorado</option>
                </select>
                <label for="nivelEducativo">Seleccione su nivel educativo</label>
            </div>
        </div>

        <!--Ocupacion-->
        <div class="d-flex mb-3">
            <div class="d-flex align-items-center justify-content-center rounded-start icono">
                <i class="fas fa-user-md fa-lg"></i>
            </div>
            <div class="w-100 form-floating form">
                <input type="text" class="form-control " id="ocupacion" name="ocupacion" placeholder="ocupacion" maxlength="45" required>
                <label for="ocupacion">Ocupacion</label>
            </div>
        </div>

        <!--Area de trabajo-->
        <div class="d-flex mb-3">
            <div class="d-flex align-items-center justify-content-center rounded-start icono">
                <i class="fas fa-briefcase fa-lg"></i>
            </div>
            <div class="w-100 form-floating form">
                <input type="text" class="form-control " id="areaTrabajo" name="areaTrabajo" placeholder="Area de trabajo" maxlength="45" required>
                <label for="areaTrabajo">Area de trabajo</label>
            </div>
        </div>

        <!--Empresa-->
        <div class="d-flex mb-3">
            <div class="d-flex align-items-center justify-content-center rounded-start icono">
                <i class="far fa-building fa-lg"></i>
            </div>
            <div class="w-100 form-floating form">
                <input type="text" class="form-control " id="empresa" name="empresa" placeholder="Empresa" maxlength="45" required>
                <label for="empresa">Empresa</label>
            </div>
        </div>

        <!--Celular-->
        <div class="d-flex mb-3">
            <div class="d-flex align-items-center justify-content-center rounded-start icono">
                <i class="fas fa-mobile-alt fa-lg"></i>
            </div>
            <div class="w-100 form-floating form">
                <input type="text" class="form-control " id="celular" name="celular" placeholder="Numero de celular" minlength="10" maxlength="15" required>
                <label for="celular">Numero de celular</label>
            </div>
        </div>

        <!--email-->
        <div class="d-flex mb-3">
            <div class="d-flex align-items-center justify-content-center rounded-start icono">
                <i class="fas fa-at fa-lg"></i>
            </div>
            <div class="w-100 form-floating form">
                <input type="email" class="form-control " id="email" name="email" placeholder="Correo electronico"  maxlength="50" required>
                <label for="email">Correo electronico</label>
            </div>
        </div>
    </div>

        <div class="justify-content-center mt-4" style="display: flex; justify-content: center; align-items: center">
            <div>
                <button type="submit" class="fw-bold btn btn-secondary btn-lg w-35 fw-bold">
                    Registrarse
                </button>
            </div>
        </div>

</form>
