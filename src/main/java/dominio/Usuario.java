package dominio;

import java.sql.Date;

public class Usuario {
    private String cedula;
    private String password;
    private String nombre;
    private String apellido1;
    private String apellido2;
    private String estadoCivil;
    private Date fechaNacimiento;
    private int edad;
    private String genero;
    private int idMunicipio;
    private String nivelEducativo;
    private String ocupacion;
    private String areaInteres;
    private String empresa;
    private String celular;
    private String email;
    private String permisos;
    private boolean status;
    private Date fechaRegistro;
    private boolean terminos;

    public Usuario() {
    }

    public Usuario(String cedula, String password){
        this.cedula = cedula;
        this.password = password;
    }
    
    //Constructor para insertar usuario

    public Usuario(String cedula, String nombre, String apellido1, String apellido2, String estadoCivil, Date fechaNacimiento, int edad, String genero, int idMunicipio, String nivelEducativo, String ocupacion, String areaInteres, String empresa, String celular, String email) {
        this.cedula = cedula;
        this.nombre = nombre;
        this.apellido1 = apellido1;
        this.apellido2 = apellido2;
        this.estadoCivil = estadoCivil;
        this.fechaNacimiento = fechaNacimiento;
        this.edad = edad;
        this.genero = genero;
        this.idMunicipio = idMunicipio;
        this.nivelEducativo = nivelEducativo;
        this.ocupacion = ocupacion;
        this.areaInteres = areaInteres;
        this.empresa = empresa;
        this.celular = celular;
        this.email = email;
    }
    
    
    //Constructor para obtener info de usuario
    public Usuario( String nombre, String apellido1, String apellido2, String estadoCivil, Date fechaNacimiento,int edad, String genero, int idMunicipio, String nivelEducativo, String ocupacion, String areaInteres, String empresa, String celular, String email, String permisos, boolean status, Date fechaRegistro, boolean terminos) {
        this.nombre = nombre;
        this.apellido1 = apellido1;
        this.apellido2 = apellido2;
        this.estadoCivil = estadoCivil;
        this.fechaNacimiento = fechaNacimiento;
        this.edad = edad;
        this.genero = genero;
        this.idMunicipio = idMunicipio;
        this.nivelEducativo = nivelEducativo;
        this.ocupacion = ocupacion;
        this.areaInteres = areaInteres;
        this.empresa = empresa;
        this.celular = celular;
        this.email = email;
        this.permisos = permisos;
        this.status = status;
        this.fechaRegistro = fechaRegistro;
        this.terminos = terminos;
    }

    
    
    
    public String getCedula() {
        return cedula;
    }

    public void setCedula(String cedula) {
        this.cedula = cedula;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido1() {
        return apellido1;
    }

    public void setApellido1(String apellido1) {
        this.apellido1 = apellido1;
    }

    public String getApellido2() {
        return apellido2;
    }

    public void setApellido2(String apellido2) {
        this.apellido2 = apellido2;
    }

    public String getEstadoCivil() {
        return estadoCivil;
    }

    public void setEstadoCivil(String estadoCivil) {
        this.estadoCivil = estadoCivil;
    }

    public Date getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(Date fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    
    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public int getIdMunicipio() {
        return idMunicipio;
    }

    public void setIdMunicipio(int idMunicipio) {
        this.idMunicipio = idMunicipio;
    }

    public String getNivelEducativo() {
        return nivelEducativo;
    }

    public void setNivelEducativo(String nivelEducativo) {
        this.nivelEducativo = nivelEducativo;
    }

    public String getOcupacion() {
        return ocupacion;
    }

    public void setOcupacion(String ocupacion) {
        this.ocupacion = ocupacion;
    }

    public String getAreaInteres() {
        return areaInteres;
    }

    public void setAreaInteres(String areaInteres) {
        this.areaInteres = areaInteres;
    }

    public String getEmpresa() {
        return empresa;
    }

    public void setEmpresa(String empresa) {
        this.empresa = empresa;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPermisos() {
        return permisos;
    }

    public void setPermisos(String permisos) {
        this.permisos = permisos;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public Date getFechaRegistro() {
        return fechaRegistro;
    }

    public void setFechaRegistro(Date fechaRegistro) {
        this.fechaRegistro = fechaRegistro;
    }

    public boolean isTerminos() {
        return terminos;
    }

    public void setTerminos(boolean terminos) {
        this.terminos = terminos;
    }
    
    
}
