package web;

import datos.MunicipiosDAO;
import datos.UsuarioDAO;
import dominio.Municipio;
import dominio.Usuario;
import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ControladorListarRegistro", urlPatterns = {"/Listar"})
public class ControladorListarRegistro extends HttpServlet {
    
    private MunicipiosDAO municipiosDAO = new MunicipiosDAO();
    Usuario usuario = new Usuario();
    UsuarioDAO usuarioDAO = new UsuarioDAO();
    String idUsuario;
  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParseException {
        

         //Procesamos los parametros
        List<Municipio> municipios = municipiosDAO.listarMunicipios();
        //List<Usuario> usuarios = usuarioDAO.Listar();
        
        //Compartimos listado en el request
        request.setAttribute("municipios", municipios);
        //request.setAttribute("usuarios", usuarios);
        
        String resumen = request.getParameter("resumen");
        String accion = request.getParameter("accion");
        
        if(resumen.equals("resumen_administrador")){
            switch (accion) {
                case "Listar":
                    
                    List listaUsuarios = usuarioDAO.ListarUsuarios();
                    request.setAttribute("usuarios", listaUsuarios);
                    break;
                case "Actualizar":
                    
                    Usuario usuario1 = new Usuario();
                    String cedulaUpdate = request.getParameter("cedula");
                    String nombreUpdate = request.getParameter("nombre");
                    String apellido1Update = request.getParameter("apellido1");
                    String apellido2Update = request.getParameter("apellido2");
                    String estadoCivilUpdate = request.getParameter("estadoCivil");
                    
                    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
                    Date fechaNacimientoUpdate = (Date) format.parse(request.getParameter("fechaNacimiento"));
                    java.sql.Date fechaNacimiento = new java.sql.Date(fechaNacimientoUpdate.getTime());
           
                    String generosUpdate = request.getParameter("generos");
                    int municipioUpdate = Integer.parseInt(request.getParameter("municipio"));
                    String nivelEducativoUpdate = request.getParameter("nivelEducativo");
                    String ocupacionUpdate = request.getParameter("ocupacion");
                    String areaTrabajoUpdate = request.getParameter("areaTrabajo");
                    String empresaUpdate = request.getParameter("empresa");
                    String celularUpdate = request.getParameter("celular");
                    String emailUpdate = request.getParameter("email");
                    
                    usuario1.setCedula(cedulaUpdate);
                    usuario1.setNombre(nombreUpdate);
                    usuario1.setApellido1(apellido1Update);
                    usuario1.setApellido2(apellido2Update);
                    usuario1.setEstadoCivil(estadoCivilUpdate);
                    usuario1.setFechaNacimiento(fechaNacimiento);
                    usuario1.setGenero(generosUpdate);
                    usuario1.setIdMunicipio(municipioUpdate);
                    usuario1.setNivelEducativo(nivelEducativoUpdate);
                    usuario1.setOcupacion(ocupacionUpdate);
                    usuario1.setAreaInteres(areaTrabajoUpdate);
                    usuario1.setEmpresa(empresaUpdate);
                    usuario1.setCelular(celularUpdate);
                    usuario1.setEmail(emailUpdate);
                    usuario1.setCedula(idUsuario);
                    usuarioDAO.ActualizarUsuario(usuario1);
                    request.getRequestDispatcher("ControladorListarRegistro?resumen=resumen_administrador&accion=Listar").forward(request, response);
                    
                    break;
                case "Cargar":
                    
                    idUsuario = request.getParameter("identification");
                    Usuario usuario = usuarioDAO.ListarPorDocumento(idUsuario);
                    request.setAttribute("usuarioSeleccionado", usuario);
                    request.getRequestDispatcher("ControladorListarRegistro?resumen=resumen_administrador&accion=Listar").forward(request, response);
                    
                    break;
                case "Eliminar":
                    break;
            }
            
            request.getRequestDispatcher("resumen.jsp").forward(request, response);
        }
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(ControladorListarRegistro.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(ControladorListarRegistro.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
