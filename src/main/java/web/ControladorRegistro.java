/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web;

import datos.UsuarioDAO;
import dominio.Usuario;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author user
 */
@WebServlet(name = "ControladorRegistro", urlPatterns = {"/RegistrarUsuario"})
public class ControladorRegistro extends HttpServlet {

    private UsuarioDAO usuarioDAO = new UsuarioDAO();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParseException {
        
        //1. Procesamos los parametros
        String cedula = request.getParameter("cedula");
        String nombre = request.getParameter("nombre");
        String apellido1 = request.getParameter("apellido1");
        String apellido2 = request.getParameter("apellido2");
        String estadoCivil = request.getParameter("estadoCivil");
        
        //Obtenemos fecha como string y convertirmos a sql date
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        Date parsed = format.parse(request.getParameter("fechaNacimiento"));
        java.sql.Date fechaNacimiento = new java.sql.Date(parsed.getTime());
        
        String genero = request.getParameter("generos");
        int idMunicipio = Integer.parseInt(request.getParameter("municipio"));
        String nivelEducativo = request.getParameter("nivelEducativo");
        String ocupacion = request.getParameter("ocupacion");
        String areaTrabajo = request.getParameter("areaTrabajo");
        String empresa = request.getParameter("empresa");
        String celular = request.getParameter("celular");
        String email = request.getParameter("email");
        
        //2. Manejo logica de presentacion
        Usuario usuario = new Usuario(cedula, nombre, apellido1, apellido2, estadoCivil, fechaNacimiento, idMunicipio, genero, idMunicipio, nivelEducativo, ocupacion, areaTrabajo, empresa, celular, email);
        if(usuarioDAO.insertarUsuario(usuario) > 0){
            System.out.println("Usuario ingresado exitosamente");
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
            Logger.getLogger(ControladorRegistro.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(ControladorRegistro.class.getName()).log(Level.SEVERE, null, ex);
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
