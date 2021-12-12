<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:choose>

    <c:when test="${alerta.equals('userpassincorrect') }">

        <!-- Toast Pass o User incorrectos -->
        <div class="d-flex justify-content-center">

            <div class="toast  align-items-center text-white bg-secondary mt-2 border-0" role="alert" id="toast" aria-live="assertive" aria-atomic="true" data-bs-autohide="false">
                <div class="d-flex">
                    <div class="toast-body ">
                        Cedula o contraseña incorrecta.
                    </div>
                    <button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>
                </div>
            </div>

        </div>



    </c:when>

    <c:when test="${alerta.equals('usuarioregistrado') }">

        <!-- Modal Usuario registrado -->
        <div class="modal fade" id="modalRegistroUsuario" tabindex="-1" aria-labelledby="Registro Usuario" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header shadow-sm">
                        <h5 class="modal-title fw-bold" id="exampleModalLabel">Usuario registrado satisfactoriamente</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <p><strong class="fw-bold">Datos generados para el inicio de sesion:</strong></p>
                        <p><strong class="fw-bold">Usuario:</strong> ${cedula}</p>
                        <p><strong class="fw-bold">Contraseña:</strong> ${password}</p>
                        <p>Estos datos igualmente seran enviados al correo <strong class="fw-bold">${email}</strong></p>
                    </div>
                    <div class="modal-footer">
                        <form action="${pageContext.request.contextPath}/index.jsp" method="GET">
                            <button type="submit" class="btn btn-secondary">Entendido</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </c:when>

    <c:otherwise>

    </c:otherwise>

</c:choose>

