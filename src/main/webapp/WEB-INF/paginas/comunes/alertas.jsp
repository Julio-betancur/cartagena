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

    <c:otherwise>

    </c:otherwise>

</c:choose>

