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

    public Disciplina() {
    }
    
    

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
    
    public static ArrayList<Disciplina> getList() {
        ArrayList<Disciplina> lista = new ArrayList<>();
        lista.add(new Disciplina("Banco de Dados", "Conceitos de Base de Dados. Modelos conceituais de informações. Modelos de Dados: Relacional, Redes e Hierárquicos.\n" +
"Modelagem de dados - conceitual, lógica e física. Teoria relacional: dependências funcionais e multivaloradas, formas\n" +
"normais. Restrições de integridade e de segurança em Banco de Dados Relacional. Sistemas Gerenciadores de Banco de Dados\n" +
"– objetivo e funções. Linguagens de declaração e de manipulação de dados.", "4º"));
        lista.add(new Disciplina("Engenharia de Software III", "Conceitos, evolução e importância de arquitetura de software. Padrões de Arquitetura. Padrões de Distribuição. Camadas\n" +
"no desenvolvimento de software. Tipos de Arquitetura de Software. Visões na arquitetura de software. Modelo de Análise e\n" +
"Projetos. Formas de representação. O processo de desenvolvimento. Mapeamento para implementação. Integração do sistema.\n" +
"Testes: planejamento e tipos. Manutenção. Documentação.", "4º"));
        lista.add(new Disciplina("Inglês IV", "Consolidação da compreensão e produção oral e escrita por meio da integração das habilidades lingüístico-comunicativas\n" +
"desenvolvidas na disciplina Inglês 3. Ênfase na oralidade, atendendo às especificidades acadêmico-profissionais da área\n" +
"e abordando aspectos sócio-culturais da língua inglesa.", "4º"));
        lista.add(new Disciplina("Linguagem de Programação IV", "Comandos de linguagens usadas na construção e estruturação de sites para a Web, com páginas dinâmi-cas e interativas.\n" +
"Definição de layouts e formatação em geral. Adição de algorítmos usando laços, matrizes, datas, funções e condições.\n" +
"Introdução a Orientação a Objetos utilizando objetos, métodos e propriedades. Integração com Banco de Dados. Exercícios\n" +
"práticos com projeto de criação de sites.", "4º"));
        lista.add(new Disciplina("Metodologia da Pesquisa Científico-Tecnológica", "O Papel da ciência e da tecnologia. Tipos de conhecimento. Método e técnica. O processo de leitura e de análise textual.\n" +
"Citações e bibliografias. Trabalhos acadêmicos: tipos, características e composição estrutural. O projeto de pesquisa\n" +
"experimental e não-experimental. Pesquisa qualitativa e quantitativa. Apresentação gráfica. Normas da ABNT.", "4º"));
        lista.add(new Disciplina("Programação Orientada á Objetos", "Conceitos e evolução da tecnologia de orientação a objetos. Limitações e diferenças entre o paradigma da programação\n" +
"estruturada em relação à orientação a objetos. Conceito de objeto, classe, métodos, atributos, herança, polimorfismo,\n" +
"agregação, associação, dependência, encapsulamento, mensagem e suas respectivas notações na linguagem padrão de\n" +
"representação da orientação a objetos. Implementação de algoritmos orientado a objetos utilizando linguagens de\n" +
"programação. Aplicação e uso das estruturas fundamentais da orientação a objetos.", "4º"));
        lista.add(new Disciplina("Sistemas Operacionais II", "Apresentação de um sistema operacional específico utilizado em ambiente corporativo. Requisitos de hardware para\n" +
"instalação do sistema. Processo de instalação, personalização, operação, administração e segurança sobre o sistema\n" +
"operacional focado. Elaboração de projetos de seleção e implantação de um sistema operacional.", "4º"));
        return lista;
        }
    
}