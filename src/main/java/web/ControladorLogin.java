package web;

import datos.UsuarioDAO;
import dominio.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet(name = "ControladorLogin", urlPatterns = {"/ConLog"})
public class ControladorLogin extends HttpServlet {

    private UsuarioDAO usuarioDAO = new UsuarioDAO();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        //1. Procesamos los parametros
        String cedula = request.getParameter("cedula");
        String password = request.getParameter("password");
    
        //2.Manejo logica presentacion
       
        Usuario usuario = new Usuario(cedula, password);
        //Llamo metodo para validar si el usuario y contraseña ingresados son correctos
        if (usuarioDAO.validarLogin(usuario)) {
            HttpSession sesion = request.getSession();
            usuario = usuarioDAO.getInfoLogin(usuario); //Guardamos en usuario el usuario con todos los datos
            sesion.setAttribute("usuario", usuario); //3. compartimos el objeto usuario en alcance de la sesion
            //Validamos si el usuario esta activo
            if (usuario.isStatus()) {
                //Validamos el rol
                if (usuario.getPermisos().equals("Administrador")) {
                    response.sendRedirect(request.getContextPath()+"/ConIngrAdmin");
                } else {
                    request.getRequestDispatcher("/WEB-INF/paginas/roles/postulante.jsp").forward(request, response);
                }
            } else {
                //El usuario no esta activo
            }
        } else {
            request.setAttribute("alerta", "userpassincorrect");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }

    }

}
