/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fatecpg.poo;

import java.util.ArrayList;

/**
 *
 * @author nanda
 */
public class Disciplina {
    
    private String nome;
    private String ementa;
    private String ciclo;
    private double nota;

    public Disciplina(String nome, String ementa, String ciclo) {
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
    
    public static ArrayList<Disciplina> getList(){
        ArrayList<Disciplina> lista = new ArrayList<>();
        lista.add(new Disciplina("Banco de Dados", "Conceitos de Base de Dados. Modelos conceituais de informações. Modelos de Dados: \n" +
"Relacional, Redes e Hierárquicos. Modelagem de dados - conceitual, lógica e física. \n" +
"Teoria relacional: dependências funcionais e multivaloradas, formas normais. \n" +
"Restrições de integridade e de segurança em Banco de Dados Relacional. Sistemas\n" +
"Gerenciadores de Banco de Dados – objetivo e funções. Linguagens de declaração e \n" +
"de manipulação de dados.", "4º"));
        lista.add(new Disciplina("Engenharia de Software III", "Conceitos, evolução e importância de arquitetura de software. Padrões de Arquitetura. \n" +
"Padrões de Distribuição. Camadas no desenvolvimento de software. Tipos de\n" +
"Arquitetura de Software. Visões na arquitetura de software. Modelo de Análise e\n" +
"Projetos. Formas de representação. O processo de desenvolvimento. Mapeamento\n" +
"para implementação. Integração do sistema. Testes: planejamento e tipos.\n" +
"Manutenção. Documentação.", "4º"));
        lista.add(new Disciplina("Inglês IV", "Consolidação da compreensão e produção oral e escrita por meio da integração das \n" +
"habilidades linguístico-comunicativas desenvolvidas na disciplina Inglês 3. Ênfase na \n" +
"oralidade, atendendo às especificidades acadêmico-profissionais da área e abordando \n" +
"aspectos socioculturais da língua inglesa.", "4º"));
        lista.add(new Disciplina("Linguagem de Programação IV", "Comandos de linguagens usadas na construção e estruturação de sites para a Web, \n" +
"com páginas dinâmicas e interativas. Definição de layouts e formatação em geral. \n" +
"Adição de algoritmos usando laços, matrizes, datas, funções e condições. Introdução a \n" +
"Orientação a Objetos utilizando objetos, métodos e propriedades. Integração com \n" +
"Banco de Dados. Exercícios práticos com projeto de criação de sites.", "4º"));
        lista.add(new Disciplina("Metodologia da Pesquisa Científico-Tecnológica", "O Papel da ciência e da tecnologia. Tipos de conhecimento. Método e técnica. O \n" +
"processo de leitura e de análise textual. Citações e bibliografias. Trabalhos acadêmicos: \n" +
"tipos, características e composição estrutural. O projeto de pesquisa experimental e \n" +
"não-experimental. Pesquisa qualitativa e quantitativa. Apresentação gráfica. Normas \n" +
"da ABNT.", "4º"));
        lista.add(new Disciplina("Programação Orientada à Objetos", "Conceitos e evolução da tecnologia de orientação a objetos. Limitações e diferenças \n" +
"entre o paradigma da programação estruturada em relação à orientação a objetos. \n" +
"Conceito de objeto, classe, métodos, atributos, herança, polimorfismo, agregação, \n" +
"associação, dependência, encapsulamento, mensagem e suas respectivas notações na \n" +
"linguagem padrão de representação da orientação a objetos. Implementação de \n" +
"algoritmos orientado a objetos utilizando linguagens de programação. Aplicação e uso \n" +
"das estruturas fundamentais da orientação a objetos.", "4º"));
        lista.add(new Disciplina("Sistemas Operacionais II", "Apresentação de um sistema operacional específico utilizado em ambiente \n" +
"corporativo. Requisitos de hardware para instalação do sistema. Processo de \n" +
"instalação, personalização, operação, administração e segurança sobre o sistema \n" +
"operacional focado. Elaboração de projetos de seleção e implantação de um sistema \n" +
"operacional.", "4º"));
        return lista;
    }
    
}
