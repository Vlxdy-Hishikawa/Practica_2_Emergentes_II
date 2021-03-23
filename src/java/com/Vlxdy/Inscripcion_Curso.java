package com.Vlxdy;
/**
 *
 * @author Vlxdy Hishikawa
 */
public class Inscripcion_Curso {
    private String Nombre;
    private String Apellidos;
    private String Curso;

    public Inscripcion_Curso() {
        Nombre = "";
        Apellidos = "";
        Curso = "";
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

    public String getCurso() {
        return Curso;
    }

    public void setCurso(String Curso) {
        this.Curso = Curso;
    }
}
