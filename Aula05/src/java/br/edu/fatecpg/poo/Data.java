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
public class Data {
    private int dia;
    private int mês;
    private int ano;
    
    public Data(){
        
    }
    
    public Data(int dia, int mês, int ano){
        this.dia = dia;
        this.mês = mês;
        this.ano = ano;
    }

    public int getDia() {
        return dia;
    }

    public void setDia(int dia) {
        this.dia = dia;
    }

    public int getMês() {
        return mês;
    }

    public void setMês(int mês) {
        this.mês = mês;
    }

    public int getAno() {
        return ano;
    }

    public void setAno(int ano) {
        this.ano = ano;
    }
    
}
