<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<form class="was-validated" action="${pageContext.request.contextPath}/ConLog?nuevaSesion=true" method="POST">
    <div class="form-floating mb-4">
        <input type="number" id="cedula" class="form-control mb-2" name="cedula"
               placeholder="Ingrese su cedula" required />
        <label for="cedula">Cédula</label>
        <div class="valid-feedback">Valido.</div>
        <div class="invalid-feedback">Por favor llene este campo.</div>
    </div>

    <div class="form-floating mb-4">
        <input type="password" id="password" class="form-control mb-2" name="password"
               placeholder="Contraseña" required />
        <label for="password" class="form-label font-weight-bold">Contraseña</label>
        <div class="valid-feedback">Valido.</div>
        <div class="invalid-feedback">Por favor llene este campo.</div>
    </div>
    
    <div class="justify-content-center mt-4" style="display: flex; justify-content: center; align-items: center">
        <div>
            <button type="submit" class="fw-bold btn btn-secondary btn-lg w-40 fw-bold">
                Iniciar sesión
            </button>
        </div>
    </div>

    <!-- Espacio Alerta -->
    <jsp:include page="/WEB-INF/paginas/comunes/alertas.jsp" />

    
</form>
