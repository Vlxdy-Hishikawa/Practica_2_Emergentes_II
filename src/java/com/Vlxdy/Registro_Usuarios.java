package com.Vlxdy;
/**
 *
 * @author Vlxdy Hishikawa
 */
public class Registro_Usuarios {
    private String Nombre;
    private String Apellidos;
    private String Correo;
    private String Contraseña;

    public Registro_Usuarios() {
        Nombre = "";
        Apellidos = "";
        Correo = "";
        Contraseña = "";
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getApellidos() {
        return Apellidos;
    }

    public void setApellidos(String Apellidos) {
        this.Apellidos = Apellidos;
    }

    public String getCorreo() {
        return Correo;
    }

    public void setCorreo(String Correo) {
        this.Correo = Correo;
    }

    public String getContraseña() {
        return Contraseña;
    }

    public void setContraseña(String Contraseña) {
        this.Contraseña = Contraseña;
    }
}
