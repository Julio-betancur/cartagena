package datos;

import static com.sun.corba.se.impl.util.Utility.printStackTrace;
import dominio.Usuario;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UsuarioDAO {

    //Declaramos las consultas como constantes
    private static final String SQL_UPDATE = "UPDATE cliente SET nombre=?, apellido=?, email=?, celular=?,saldo=?"
            + "WHERE id_cliente=?";
    private static final String SQL_DELETE = "DELETE FROM cliente WHERE id_cliente=?";

    private static final String SQL_VALIDATE = "SELECT AES_DECRYPT(PASSWORD,?) as PASSWORD FROM tab_user WHERE IDENTIFICACION=?";

    private static final String SQL_SELECT = "SELECT NOMBRES,PRIMER_APELLIDO,SEGUNDO_APELLIDO,ESTADO_CIVIL, "
            + "FECHA_NACIMIENTO, TIMESTAMPDIFF(year,birthDate,CURDATE()) as edad,GENERO,ID_MUNICIPIO,NIVEL_EDUCACION,OCUPACION,AREA_TRABAJO,"
            + "EMPRESA,NUMERO_CELULAR,CORREO_ELECTRONICO,PERMISO_SISTEMA,ESTADO,FECHA_REGISTRO,TERMINOS_CONDICIONES FROM tab_user WHERE IDENTIFICACION=?";
    
    private static final String SQL_INSERT = "INSERT INTO tab_user(IDENTIFICACION,PASSWORD,NOMBRES,PRIMER_APELLIDO,SEGUNDO_APELLIDO,ESTADO_CIVIL,FECHA_NACIMIENTO,"
            + "GENERO,ID_MUNICIPIO,NIVEL_EDUCACION,OCUPACION,AREA_TRABAJO,EMPRESA,NUMERO_CELULAR,CORREO_ELECTRONICO,PERMISO_SISTEMA,ESTADO,FECHA_REGISTRO,TERMINOS_CONDICIONES) "
            + "VALUES(?,AES_ENCRYPT(?,?),?,?,?,?,?,?,?,?,?,?,?,?,?,     ?,?,CURDATE(),?)";
    
    private static final String SQL_SELECT_USER = "SELECT * FROM tab_user";
    
    private static final String SQL_UPDATE_USER = "UPDATE tab_user set IDENTIFICACION=? NOMBRES=?, PRIMER_APELLIDO=?,SEGUNDO_APELLIDO=?, ESTADO_CIVIL=?, "
            + "FECHA_NACIMIENTO, TIMESTAMPDIFF(year,birthDate,CURDATE()) as edad=?,GENERO=?,ID_MUNICIPIO=?,NIVEL_EDUCACION=?,OCUPACION=?,AREA_TRABAJO=?,"
            + "EMPRESA=?,NUMERO_CELULAR=?,CORREO_ELECTRONICO=? WHERE IDENTIFICACION=?";
    
    
    //Metodo para insertar usuario
    public int insertarUsuario(Usuario usuario){
        Connection cn = null;
        PreparedStatement ps = null;
        int rows = 0;
        
        try {
            cn = Conexion.getConnection();
            ps = cn.prepareStatement(SQL_INSERT);
            ps.setString(1, usuario.getCedula());
            ps.setString(2, usuario.getPassword());
            ps.setString(3, usuario.getPassword());
            ps.setString(4, usuario.getNombre());
            ps.setString(5, usuario.getApellido1());
            ps.setString(6, usuario.getApellido2());
            ps.setString(7, usuario.getEstadoCivil());
            ps.setDate(8, usuario.getFechaNacimiento());
            ps.setString(9, usuario.getGenero());
            ps.setInt(10, usuario.getIdMunicipio());
            ps.setString(11, usuario.getNivelEducativo());
            ps.setString(12, usuario.getOcupacion());
            ps.setString(13, usuario.getAreaInteres());
            ps.setString(14, usuario.getEmpresa());
            ps.setString(15, usuario.getCelular());
            ps.setString(16, usuario.getEmail());
            ps.setString(17, "Postulante");
            ps.setInt(18, 1);
            ps.setInt(19, 0);
            rows = ps.executeUpdate();
            
        } catch (SQLException ex) {
            System.out.println("Error al registrar usuario - Registro");
            System.out.println(ex);
        }
        finally{
            Conexion.close(ps);
            Conexion.close(cn);
        }
        
        return rows;
    }
    
    public boolean validarLogin(Usuario usuario) {
        Connection cn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            cn = Conexion.getConnection();
            ps = cn.prepareStatement(SQL_VALIDATE);
            ps.setString(1, usuario.getPassword());
            ps.setString(2, usuario.getCedula());

            rs = ps.executeQuery();

            if (rs.next()) {
                String pass = rs.getString("password");
                if (pass != null) {
                    if (pass.equals(usuario.getPassword())) {
                        return true;
                    }
                }

            }
        } catch (SQLException ex) {
            System.out.println("Error al validar usuario - LOGIN");
            System.out.println(ex);

        } finally {
            Conexion.close(rs);
            Conexion.close(ps);
            Conexion.close(cn);
        }
        return false;
    }

    public Usuario getInfoLogin(Usuario usuario) {
        Connection cn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Usuario usuarioEncontrado = null;

        try {
            cn = Conexion.getConnection();
            ps = cn.prepareStatement(SQL_SELECT);
            ps.setString(1, usuario.getCedula());
            rs = ps.executeQuery();

            if (rs.next()) {
                String nombre = rs.getString("NOMBRES");
                String apellido1 = rs.getString("PRIMER_APELLIDO");
                String apellido2 = rs.getString("SEGUNDO_APELLIDO");
                String estadoCivil = rs.getString("ESTADO_CIVIL");
                Date fechaNacimiento = rs.getDate("FECHA_NACIMIENTO");
                int edad = rs.getInt("edad");
                String genero = rs.getString("GENERO");
                int idMunicipio = rs.getInt("ID_MUNICIPIO");
                String nivelEducativo = rs.getString("NIVEL_EDUCACION");
                String ocupacion = rs.getString("OCUPACION");
                String areaTrabajo = rs.getString("AREA_TRABAJO");
                String empresa = rs.getString("EMPRESA");
                String celular = rs.getString("NUMERO_CELULAR");
                String email = rs.getString("CORREO_ELECTRONICO");
                String permisos = rs.getString("PERMISO_SISTEMA");
                boolean estatus = rs.getBoolean("ESTADO");
                Date fechaRegistro = rs.getDate("FECHA_REGISTRO");
                boolean terminos = rs.getBoolean("TERMINOS_CONDICIONES");

                usuarioEncontrado = new Usuario(nombre, apellido1, apellido2, estadoCivil, fechaNacimiento, edad, genero, idMunicipio,
                        nivelEducativo, ocupacion, areaTrabajo, empresa, celular, email, permisos, estatus, fechaRegistro, terminos);

            }
        } catch (SQLException ex) {
            System.out.println("Error al obtener informacion del usuario - LOGIN");
        } finally {
            Conexion.close(rs);
            Conexion.close(ps);
            Conexion.close(cn);
        }

        return usuarioEncontrado;
    }
    
    public List<Usuario> ListarUsuarios() {
        
        Connection cn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        List<Usuario> listaUsuarios = new ArrayList<Usuario>();
        
        try {
            cn = Conexion.getConnection();
            ps = cn.prepareStatement(SQL_SELECT_USER);
            rs = ps.executeQuery();
            
            while (rs.next()) {
                Usuario usuario = new Usuario();
                usuario.setCedula(rs.getString("IDENTIFICACION"));
                usuario.setNombre(rs.getString("NOMBRES"));
                usuario.setApellido1(rs.getString("PRIMER_APELLIDO"));
                usuario.setApellido2(rs.getString("SEGUNDO_APELLIDO"));
                usuario.setEstadoCivil(rs.getString("ESTADO_CIVIL"));
                usuario.setFechaNacimiento(rs.getDate("FECHA_NACIMIENTO"));
                usuario.setGenero(rs.getString("GENERO"));
                usuario.setIdMunicipio(rs.getInt("ID_MUNICIPIO"));
                usuario.setNivelEducativo(rs.getString("NIVEL_EDUCACION"));
                usuario.setOcupacion(rs.getString("OCUPACION"));
                usuario.setAreaInteres(rs.getString("AREA_TRABAJO"));
                usuario.setEmpresa(rs.getString("EMPRESA"));
                usuario.setCelular(rs.getString("NUMERO_CELULAR"));
                usuario.setEmail(rs.getString("CORREO_ELECTRONICO")); 
                
                listaUsuarios.add(usuario);
            }
        } catch (SQLException ex) {
            System.out.println("Error al listar usuarios");
            System.out.println(ex);
        }
        return listaUsuarios;
    }
    
    public Usuario ListarPorDocumento(String IDENTIFICACION) {
        
        String SQL_SELECT_USERID = "SELECT * FROM user WHERE IDENTIFICACION=" + IDENTIFICACION;
        Usuario usuario = new Usuario();
        
        Connection cn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        try {
            cn = Conexion.getConnection();
            ps = cn.prepareStatement(SQL_SELECT_USERID);
            rs = ps.executeQuery();
            
            while (rs.next()) {
                usuario.setCedula(rs.getString(1));
                usuario.setNombre(rs.getString(3));
                usuario.setApellido1(rs.getString(4));
                usuario.setApellido2(rs.getString(5));
                usuario.setEstadoCivil(rs.getString(6));
                usuario.setFechaNacimiento(rs.getDate(7));
                usuario.setGenero(rs.getString(8));
                usuario.setIdMunicipio(rs.getInt(9));
                usuario.setNivelEducativo(rs.getString(10));
                usuario.setOcupacion(rs.getString(11));
                usuario.setAreaInteres(rs.getString(12));
                usuario.setEmpresa(rs.getString(13));
                usuario.setCelular(rs.getString(14));
                usuario.setEmail(rs.getString(15)); 
            }
        } catch (SQLException ex) {
            System.out.println("Error al listar usuarios por documento");
            System.out.println(ex);
        }
        
        return usuario;
        
    }
    
    public String ActualizarUsuario(Usuario usuario) {
        
        Connection cn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        try {
            cn = Conexion.getConnection();
            ps = cn.prepareStatement(SQL_UPDATE_USER);
            ps.setString(1, usuario.getCedula());
            ps.setString(3, usuario.getNombre());
            ps.setString(4, usuario.getApellido1());
            ps.setString(5, usuario.getApellido2());
            ps.setString(6, usuario.getEstadoCivil());
            ps.setDate(7, usuario.getFechaNacimiento());
            ps.setString(8, usuario.getGenero());
            ps.setInt(9, usuario.getIdMunicipio());
            ps.setString(10, usuario.getNivelEducativo());
            ps.setString(11, usuario.getOcupacion());
            ps.setString(12, usuario.getAreaInteres());
            ps.setString(13, usuario.getEmpresa());
            ps.setString(14, usuario.getCelular());
            ps.setString(15, usuario.getEmail());
            ps.executeUpdate();
            
    } catch (SQLException ex) {
            System.out.println("Error al actualizar usuarios");
            System.out.println(ex);
        }
        return null;
    }
}
