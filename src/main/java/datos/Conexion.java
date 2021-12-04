package datos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.sql.DataSource;
import org.apache.commons.dbcp2.BasicDataSource;

public class Conexion {

    private static final String DB = "cartagena";
    private static final String JDBC_URL = "JDBC:mysql://localhost:33065/" + DB + "?useSSL=false&useTimezone=true&serverTimezone=UTC&allowPublicKeyRetrieval=true";
    private static final String USER = "root";
    private static final String PASS = "";

    private static BasicDataSource ds;

    //Metodo para crear pool de conexiones y retornarla
    public static DataSource getDataSource() {
        if (ds == null) {
            ds = new BasicDataSource();
            ds.setUrl(JDBC_URL);
            ds.setUsername(USER);
            ds.setPassword(PASS);
            //Le indicamos el tamaño de conexion que tendra el pool
            ds.setInitialSize(50);
        }
        return ds;
    }

    //Metodo para retornar la conexion obtenido del pool
    public static Connection getConnection() throws SQLException {
        return getDataSource().getConnection();
    }

    //Metodo sobrecargado para cerrar conexiones
    public static void close(Connection cn) {
        try {
            cn.close();
        } catch (SQLException ex) {
            System.out.println("Error al cerrar la conexion");
        }
    }

    public static void close(PreparedStatement ps) {
        try {
            ps.close();
        } catch (SQLException ex) {
            System.out.println("Error al cerrar el preparedStatement");
        }
    }

    public static void close(ResultSet rs) {
        try {
            rs.close();
        } catch (SQLException ex) {
            System.out.println("Error al cerrar el ResultSet");
        }
    }
    
   
}
