package com.Vlxdy;
/**
 *
 * @author Vlxdy Hishikawa
 */
public class Registro_Libros {
    private String Titulo;
    private String Autor;
    private String Resumen;
    private String Medio;

    public Registro_Libros() {
        Titulo = "";
        Autor = "";
        Resumen = "";
        Medio = "";
    }

    public String getTitulo() {
        return Titulo;
    }

    public void setTitulo(String Titulo) {
        this.Titulo = Titulo;
    }

    public String getAutor() {
        return Autor;
    }

    public void setAutor(String Autor) {
        this.Autor = Autor;
    }

    public String getResumen() {
        return Resumen;
    }

    public void setResumen(String Resumen) {
        this.Resumen = Resumen;
    }

    public String getMedio() {
        return Medio;
    }

    public void setMedio(String Medio) {
        this.Medio = Medio;
    }
    
    
}
