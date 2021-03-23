package com.Vlxdy;
/**
 *
 * @author Vlxdy Hishikawa
 */
public class Registro_Productos {
    private String Producto;
    private String Categoria;
    private int Existencia;
    private int Precio;

    public Registro_Productos() {
    Producto = " ";
    Categoria = " ";
    Existencia = 0;
    Precio  = 0;
    }

    public String getProducto() {
        return Producto;
    }

    public void setProducto(String Producto) {
        this.Producto = Producto;
    }

    public String getCategoria() {
        return Categoria;
    }

    public void setCategoria(String Categoria) {
        this.Categoria = Categoria;
    }

    public int getExistencia() {
        return Existencia;
    }

    public void setExistencia(int Existencia) {
        this.Existencia = Existencia;
    }

    public int getPrecio() {
        return Precio;
    }

    public void setPrecio(int Precio) {
        this.Precio = Precio;
    }
    
}
