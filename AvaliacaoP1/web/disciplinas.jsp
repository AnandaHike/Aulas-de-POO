<%-- 
    Document   : amortizacao-americana
    Created on : 4 de out de 2020, 16:59:12
    Author     : nanda
--%>

<%@page import="br.edu.fatecpg.poo.Disciplina"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
     ArrayList<Disciplina> lista = (ArrayList)application.getAttribute("lista");
    if(lista == null){
        lista = new ArrayList<>();
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
        application.setAttribute("lista", lista);
    }
    double n = 0.00;
    if(request.getParameter("red")!= null){
        int i = Integer.parseInt(request.getParameter("i"));
        Disciplina alt = lista.get(i);
        alt.setNota(Double.parseDouble(request.getParameter("n")));
        
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Minhas disciplinas</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
        <%@include file="WEB-INF/jspf/head-reference.jspf" %>
        <hr/>
        <h1 class="container-fluid">Minhas Disciplinas</h1>
        <hr/>
        <table class="table table-bordered">
            <thead class="thead-dark">
              <tr>
                <th scope="col">Nome</th>
                <th scope="col">Ementa</th>
                <th scope="col">Ciclo</th>
                <th scope="col">Nota</th>
                <th scope="col">Comndo</th>
              </tr>
            </thead>
            <tbody>
              <% for(int i = 1; i<=lista.size(); i++){ %>    
              <tr>
                  <% Disciplina obj = lista.get(i); %>  
                  <% Disciplina alt = lista.get(i); %>  
                  <th scope="row"><%= obj.getNome() %></th>
                  <td style="background-color: #FAF0E6"><%= obj.getEmenta() %></td>
                  <td><%= obj.getCiclo() %></td>
                  <td style="background-color: #FAF0E6"><%= alt.getNota() %></td>
                  <td>
                      <form>
                          <input type="number" name="n" step="0.01" min="0.00" max="10.00"/>
                          <input type="hidden" name="i" value="<%= i %>"/>
                          <input type="submit" name="red" value="Redefinir"/>
                      </form>
                  </td>
              </tr>
            </tbody>
            <%}%>
        </table>
        <p class="container-fluid"><a href="index.jsp">Voltar</a></p>
        <%@include file="WEB-INF/jspf/body-reference.jspf" %>
    </body>
</html>
