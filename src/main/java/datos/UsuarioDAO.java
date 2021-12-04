package datos;

import dominio.Usuario;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UsuarioDAO {

    //Declaramos las consultas como constantes
    private static final String SQL_INSERT = "INSERT INTO cliente(nombre,apellido,email,celular,saldo) "
            + "VALUES(?,?,?,?,?) ";
    private static final String SQL_UPDATE = "UPDATE cliente SET nombre=?, apellido=?, email=?, celular=?,saldo=?"
            + "WHERE id_cliente=?";
    private static final String SQL_DELETE = "DELETE FROM cliente WHERE id_cliente=?";

    private static final String SQL_VALIDATE = "SELECT AES_DECRYPT(password,?) as password FROM user WHERE identification=?";

    private static final String SQL_SELECT = "SELECT name, lastname1,lastname2, maritalStatus, "
            + "birthDate, TIMESTAMPDIFF(year,birthDate,CURDATE()) as edad,gender,idMunicipality,educationLevel,occupation,workArea,"
            + "company,phone,email,permission,status,registrationDate,terms FROM  user WHERE identification=?";

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
