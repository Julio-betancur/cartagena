<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" 
      integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

      <div class="row">
          <div class="card col-md-4">                 
                  <div class="card-body">
                      <h5 class="card-title">Detalle Registro</h5>   
                      <div>
                      <form action="ControladorListarRegistro?resumen=panel_administrador" method="POST">
                       <div class="form-group">
                           <input type="text" class="form-control " id="cedula" name="cedula" value="${usuarioSeleccionado.getCedula()}" placeholder="Cédula" minlength="3" maxlength="20" required>
                           <label for="cedula">Cédula</label>
                           <small id="emailHelp" class="form-text text-muted"></small>
                       </div>
                       <div class="form-group">
                           <input type="text" class="form-control " id="nombre" name="nombre" value="${usuarioSeleccionado.getNombre()}" placeholder="nombre" minlength="3" maxlength="20" required>
                           <label for="nombre">Nombre</label>
                       </div>
                       <div class="form-group">
                               <input type="text" class="form-control " id="apellido1" name="apellido1" value="${usuarioSeleccionado.getApellido1()}" placeholder="apellido1" maxlength="20" required>
                               <label for="apellido1">Primer apellido</label>
                       </div>
                          <div class="form-group">
                              <input type="text" class="form-control " id="apellido2" name="apellido2" value="${usuarioSeleccionado.getApellido2()}" placeholder="apellido2" maxlength="20" required>
                              <label for="apellido2">Segundo apellido</label>
                       </div>
                          <div class="form-group">
                              <select class="form-select" id="estadoCivil" name="estadoCivil" value="${usuarioSeleccionado.getEstadoCivil()}">
                                  <option value="soltero">Solter(a)</option>
                                  <option value="casado">Casado(a)</option>
                                  <option value="viudo">Viudo(a)</option>
                                  <option value="divorciado">Divorciado(a)</option>
                                  <option value="unionlibre">Unión libre</option>
                              </select>
                              <label for="estadoCivil">Seleccione su estado civil</label>
                       </div>
                          <div class="form-group">
                              <input type="date" class="form-control " id="fechaNacimiento" name="fechaNacimiento" value="${usuarioSeleccionado.getFechaNacimiento()}" placeholder="fechanacimiento" required>
                              <label for="fechaNacimiento">Seleccione su fecha de nacimiento</label>
                       </div>
                       <div class="form-group form-check">
                           <input class="form-check-input " type="radio"  name="generos" id="femenino" value="${usuarioSeleccionado.getGenero()}" checked>
                           <label class="form-check-label" for="femenino">
                               Femenino
                           </label>
                       </div>
                          <div class="form-group form-check">
                              <input class="form-check-input" type="radio" name="generos" id="masculino" value="${usuarioSeleccionado.getGenero()}">
                              <label class="form-check-label" for="masculino">
                                  Masculino
                              </label>
                       </div>
                       
                          <div class="form-group">
                               <jsp:include page="municipioInput.jsp" />
                             
                              <label for="municipio">Seleccione su municipio de residencia</label>
                       </div>
                              
                        <div class="form-group">
                            <select class="form-select" id="nivelEducativo" name="nivelEducativo" value="${usuarioSeleccionado.getNivelEducativo()}">
                                <option value="bachillerato">Bachillerato</option>
                                <option value="pregrado">Pregrado</option>
                                <option value="especializacion">Especialización</option>
                                <option value="maestria">Maestría</option>
                                <option value="doctorado">Doctorado</option>
                            </select>
                            <label for="nivelEducativo">Seleccione su nivel educativo</label>
                       </div>
                              <div class="form-group">
                                  <input type="text" class="form-control " id="ocupacion" name="ocupacion" value="${usuarioSeleccionado.getOcupacion()}" placeholder="ocupacion" maxlength="45" required>
                                  <label for="ocupacion">Ocupacion</label>
                              </div>
                               <div class="form-group">
                                   <input type="text" class="form-control " id="areaTrabajo" name="areaTrabajo" value="${usuarioSeleccionado.getAreaInteres()}" placeholder="Area de trabajo" maxlength="45" required>
                                   <label for="areaTrabajo">Area de trabajo</label>
                              </div>
                              <div class="form-group">
                                  <input type="text" class="form-control " id="empresa" name="empresa" value="${usuarioSeleccionado.getEmpresa()}" placeholder="Empresa" maxlength="45" required>
                                  <label for="empresa">Empresa</label>
                              </div>
                              <div class="form-group">
                                  <input type="text" class="form-control " id="celular" name="celular" value="${usuarioSeleccionado.getCelular()}" placeholder="Numero de celular" minlength="10" maxlength="15" required>
                                  <label for="celular">Numero de celular</label>
                              </div>
                              <div class="form-group">
                                  <input type="email" class="form-control " id="email" name="email" value="${usuarioSeleccionado.getCelular()}" placeholder="Correo electronico"  maxlength="50" required>
                                  <label for="email">Correo electronico</label>
                              </div>
                              
                               <input type="submit" class="btn btn-primary" name="accion" value="Actualizar" >
                   </form>   
                  </div>
              </div>
          </div> 
                               
          <div class="col-md-8">
              <table class="table">
                  <thead class="thead-dark">
                      <tr>
                          <th scope="col">Cedula</th>
                          <th scope="col">Nombre</th>
                          <th scope="col">Primer Apellido</th>
                          <th scope="col">Segundo Apellido</th>
                          <th scope="col">Estado Civil</th>
                          <th scope="col">Fecha Nacimiento</th>
                          <th scope="col">Genero</th>
                          <th scope="col">Municipio</th>
                          <th scope="col">Nivel Educativo</th>
                          <th scope="col">Ocupacion</th>
                          <th scope="col">Area de Interes</th>
                          <th scope="col">Empresa</th>
                          <th scope="col">Celular</th>
                          <th scope="col">Email</th>
                          <th scope="col">Acciones</th>
                      </tr>
                  </thead>
                  <tbody>
                      <c:forEach var="usuario" items="${usuarios}">
                                 <tr>
                                     <th scope="row">${usuario.getCedula()}</th>
                                     <td>${usuario.getNombre()}</td>
                                     <td>${usuario.getApellido1()}</td>
                                     <td>${usuario.getApellido2()}</td>
                                     <td>${usuario.getEstadoCivil()}</td>
                                     <td>${usuario.getFechaNacimiento()}</td>
                                     <td>${usuario.getGenero()}</td>
                                     <td>${usuario.getIdMunicipio()}</td>
                                     <td>${usuario.getNivelEducativo()}</td>
                                     <td>${usuario.getOcupacion()}</td>
                                     <td>${usuario.getAreaInteres()}</td>
                                     <td>${usuario.getEmpresa()}</td>
                                     <td>${usuario.getCelular()}</td>
                                     <td>${usuario.getEmail()}</td>
                                     <td>
                                         <a class="btn btn-warning" href="ControladorListarRegistro?resumen=resumen_administrador&accion=Cargar&identification=${usuario.getCedula()}">Editar</a>
                                         <a class="btn btn-danger" href="ControladorListarRegistro?resumen=resumen_administrador&accion=Eliminar&identification=${usuario.getCedula()}">Eliminar</a>
                                     </td>
                                 </tr>
                       </c:forEach>          
                  </tbody>
              </table>
          </div>
      </div>

    <!-- Optional JavaScript; choose one of the two! -->

    
    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
  
