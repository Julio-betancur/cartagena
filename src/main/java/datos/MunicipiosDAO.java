package datos;

import static com.sun.corba.se.impl.util.Utility.printStackTrace;
import dominio.Municipio;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class MunicipiosDAO {
    private final String SQL_SELECT = "SELECT * FROM municipality";
    
    public List<Municipio> listarMunicipios(){
        Connection cn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        List<Municipio> listaMunicipios = new ArrayList<Municipio>();
        try {
            cn = Conexion.getConnection();
            ps = cn.prepareStatement(SQL_SELECT);  
            rs = ps.executeQuery();
            
            while (rs.next()) {
                Municipio municipio = new Municipio();
                municipio.setIdMunicipio(rs.getInt("id_municipio"));
                municipio.setNombreMunicipio(rs.getString("nombre_municipio"));
                municipio.setIdDepartamento(rs.getInt("id_departamento"));
                
                listaMunicipios.add(municipio);
            }
            
        } catch (SQLException ex) {
            System.out.println("Error al listar municipios");
            printStackTrace();
        }
        
        return listaMunicipios;
    }
    
    
    
}
