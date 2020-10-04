/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fatecpg.poo;

/**
 *
 * @author nanda
 */
public class Diciplina {
    
    private String nome;
    private String ementa;
    private String ciclo;
    private double nota;

    public Diciplina(String nome, String ementa, String ciclo) {
        this.nome = nome;
        this.ementa = ementa;
        this.ciclo = ciclo;
    }
    
    

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmenta() {
        return ementa;
    }

    public void setEmenta(String ementa) {
        this.ementa = ementa;
    }

    public String getCiclo() {
        return ciclo;
    }

    public void setCiclo(String ciclo) {
        this.ciclo = ciclo;
    }

    public double getNota() {
        return nota;
    }

    public void setNota(double nota) {
        this.nota = nota;
    }
    
    
    
}
