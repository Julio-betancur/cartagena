<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="d-flex mb-3">
    <div class="d-flex align-items-center justify-content-center rounded-start icono">
        <i class="fas fa-city fa-lg"></i>
    </div>
    <div class="w-100 form-floating">
        <select class="form-select" id="municipio" name="municipio">
            <c:forEach var="municipio" items="${municipios}">
                <option value="${municipio.idMunicipio}">${municipio.nombreMunicipio}</option>
            </c:forEach>
        </select>
        <label for="municipio">Seleccione su municipio de residencia</label>
    </div>
</div>