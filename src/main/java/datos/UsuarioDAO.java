package datos;

import dominio.Usuario;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UsuarioDAO {

    //Declaramos las consultas como constantes
    private static final String SQL_UPDATE = "UPDATE cliente SET nombre=?, apellido=?, email=?, celular=?,saldo=?"
            + "WHERE id_cliente=?";
    private static final String SQL_DELETE = "DELETE FROM cliente WHERE id_cliente=?";

    private static final String SQL_VALIDATE = "SELECT AES_DECRYPT(password,?) as password FROM user WHERE identification=?";

    private static final String SQL_SELECT = "SELECT name, lastname1,lastname2, maritalStatus, "
            + "birthDate, TIMESTAMPDIFF(year,birthDate,CURDATE()) as edad,gender,idMunicipality,educationLevel,occupation,workArea,"
            + "company,phone,email,permission,status,registrationDate,terms FROM  user WHERE identification=?";
    
    private static final String SQL_INSERT = "INSERT INTO user(identification,password,name,lastname1,lastname2,maritalStatus,birthDate,"
            + "gender,idMunicipality,educationLevel,occupation,workArea,company,phone,email,permission,status,registrationDate,terms) "
            + "VALUES(?,AES_ENCRYPT(?,?),?,?,?,?,?,?,?,?,?,?,?,?,?,     ?,?,CURDATE(),?)";

    //Metodo para insertar usuario
    public int insertarUsuario(Usuario usuario){
        Connection cn = null;
        PreparedStatement ps = null;
        int rows = 0;
        //Se crea la contraseña con los ultimos 4 digitos de la cedula  
        String pass = usuario.getNombre().substring(0,3) + usuario.getCedula().substring(0,4);
        System.out.println(pass);
        try {
            cn = Conexion.getConnection();
            ps = cn.prepareStatement(SQL_INSERT);
            ps.setString(1, usuario.getCedula());
            ps.setString(2, pass);
            ps.setString(3, pass);
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
                String nombre = rs.getString("name");
                String apellido1 = rs.getString("lastname1");
                String apellido2 = rs.getString("lastname2");
                String estadoCivil = rs.getString("maritalStatus");
                Date fechaNacimiento = rs.getDate("birthDate");
                int edad = rs.getInt("edad");
                String genero = rs.getString("gender");
                int idMunicipio = rs.getInt("idMunicipality");
                String nivelEducativo = rs.getString("educationLevel");
                String ocupacion = rs.getString("occupation");
                String areaTrabajo = rs.getString("workArea");
                String empresa = rs.getString("company");
                String celular = rs.getString("phone");
                String email = rs.getString("email");
                String permisos = rs.getString("permission");
                boolean estatus = rs.getBoolean("status");
                Date fechaRegistro = rs.getDate("registrationDate");
                boolean terminos = rs.getBoolean("terms");

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
}
