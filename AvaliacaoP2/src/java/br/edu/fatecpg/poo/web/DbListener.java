/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fatecpg.poo.web;

import br.edu.fatecpg.poo.Disciplina;
import java.sql.*;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * Web application lifecycle listener.
 *
 * @author nanda
 */
public class DbListener implements ServletContextListener {
    private static final String CLASS_NAME = "org.sqlite.JDBC";
    public static final String URL = "jdbc:sqlite:minhas_disciplinas.db";
    
    public static String exceptionMessage = null;
    
    public static Connection getConnection() throws Exception{
        return DriverManager.getConnection(URL);
    }

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        Connection con = null;
        Statement stmt = null;
        
        try{
            Class.forName(CLASS_NAME);
            con = DriverManager.getConnection(URL);
            stmt = con.createStatement();
            stmt.execute(Disciplina.getCreateStatement());
            
            if(Disciplina.getList().isEmpty()){
                stmt.execute("INSERT INTO disciplinas "
                + "VALUES('Banco de Dados', 'Conceitos de Base de Dados. Modelos conceituais de informações. Modelos de Dados: \n" +
                "Redes e Hierárquicos. Modelagem de dados - conceitual, lógica e física. Teoria \n" +
                "relacional: dependências funcionais e multivaloradas, formas normais. Restrições de\n" +
                " integridade e de segurança em Banco de Dados Relacional. Sistemas Gerenciadores de \n" +
                "Banco de Dados – objetivo e funções. Linguagens de declaração e de manipulação de \n" +
                "dados.', '4º', '0.00')");
                stmt.execute("INSERT INTO disciplinas "
                + "VALUES('Engenharia de Software III', 'Conceitos, evolução e importância de arquitetura de software. Padrões de Arquitetura. \n" +
                "Padrões de Distribuição. Camadas no desenvolvimento de software. Tipos de \n" +
                "Arquitetura de Software. Visões na arquitetura de software. Modelo de Análise e \n" +
                "Projetos. Formas de representação. O processo de desenvolvimento. Mapeamento para \n" +
                "implementação. Integração do sistema. Testes: planejamento e tipos. Manutenção. \n" +
                "Documentação.', '4º', '0.00')");
                stmt.execute("INSERT INTO disciplinas "
                + "VALUES('Inglês IV', 'Consolidação da compreensão e produção oral e escrita por meio da integração das \n" +
                "habilidades linguístico-comunicativas desenvolvidas na disciplina Inglês 3. Ênfase na \n" +
                "oralidade, atendendo às especificidades acadêmico-profissionais da área e abordando \n" +
                "aspectos socioculturais da língua inglesa.', '4º', '0.00')");
                stmt.execute("INSERT INTO disciplinas "
                + "VALUES('Linguagem de Programação IV', 'Comandos de linguagens usadas na construção e estruturação de sites para a Web, com \n" +
                "páginas dinâmicas e interativas. Definição de layouts e formatação em geral. Adição de \n" +
                "algoritmos usando laços, matrizes, datas, funções e condições. Introdução a Orientação \n" +
                "a Objetos utilizando objetos, métodos e propriedades. Integração com Banco de Dados. \n" +
                "Exercícios práticos com projeto de criação de sites.', '4º', '0.00')");
                stmt.execute("INSERT INTO disciplinas "
                + "VALUES('Metodologia da Pesquisa Científico-Tecnológica', 'O Papel da ciência e da tecnologia. Tipos de conhecimento. Método e técnica. O\n" +
                "processo de leitura e de análise textual. Citações e bibliografias. Trabalhos acadêmicos: \n" +
                "tipos, características e composição estrutural. O projeto de pesquisa experimental e \n" +
                "não-experimental. Pesquisa qualitativa e quantitativa. Apresentação gráfica. Normas da \n" +
                "ABNT.', '4º', '0.00')");
                stmt.execute("INSERT INTO disciplinas "
                + "VALUES('Programação Orientada à Objetos', 'Conceitos e evolução da tecnologia de orientação a objetos. Limitações e diferenças \n" +
                "entre o paradigma da programação estruturada em relação à orientação a objetos. \n" +
                "Conceito de objeto, classe, métodos, atributos, herança, polimorfismo, agregação, \n" +
                "associação, dependência, encapsulamento, mensagem e suas respectivas notações na \n" +
                "linguagem padrão de representação da orientação a objetos. Implementação de \n" +
                "algoritmos orientado a objetos utilizando linguagens de programação. Aplicação e uso \n" +
                "das estruturas fundamentais da orientação a objetos.', '4º', '0.00')");
                stmt.execute("INSERT INTO disciplinas "
                + "VALUES('Sistemas Operacionais II', 'Apresentação de um sistema operacional específico utilizado em ambiente corporativo. \n" +
                "Requisitos de hardware para instalação do sistema. Processo de instalação, \n" +
                "personalização, operação, administração e segurança sobre o sistema operacional \n" +
                "focado. Elaboração de projetos de seleção e implantação de um sistema operacional.', '4º', '0.00')");
            }
        }catch (Exception ex){
            exceptionMessage = ex.getLocalizedMessage();
        }finally{
            try{stmt.close();}catch(Exception ex2){}
            try{con.close();}catch(Exception ex2){}
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
    }
}
