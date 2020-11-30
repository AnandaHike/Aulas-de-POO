<%-- 
    Document   : index
    Created on : 30 de nov de 2020, 00:49:44
    Author     : nanda
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="br.edu.fatecpg.poo.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    ArrayList<Disciplina> lista = (ArrayList)application.getAttribute("lista");
    if(lista == null){
        lista = new ArrayList<>();
        lista.add(new Disciplina("Banco de Dados", "Conceitos de Base de Dados. Modelos conceituais de informações.\n" + 
 "Modelos de Dados: Relacional, Redes e Hierárquicos. Modelagem de dados - conceitual, lógica \n" + 
 "e física. Teoria relacional: dependências funcionais e multivaloradas, formas normais.\n" +
 "Restrições de integridade e de segurança em Banco de Dados Relacional. Sistemas Gerenciadores de\n" +
 "Banco de Dados - objetivo e funções. Linguagens de declaração e de manipulação de dados.", "4º"));
        lista.add(new Disciplina("Engenharia de Software III", "Conceitos, evolução e importância de arquitetura de software.\n" +
 "Padrões de Arquitetura. Padrões de Distribuição. Camadas no desenvolvimento de software. Tipos de Arquitetura de\n" +
 "Software. Visões na arquitetura de software. Modelo de Análise e Projetos. Formas de representação.\n" +
 "O processo de desenvolvimento. Mapeamento para implementação. Integração do sistema.\n" + 
 "Testes: planejamento e tipos. Manutenção. Documentação.", "4º"));
        lista.add(new Disciplina("Inglês IV", "Consolidação da compreensão e produção oral e escrita por meio da integração das\n" +
                "habilidades lingüístico-comunicativas desenvolvidas na disciplina Inglês 3. Ênfase na oralidade, atendendo às\n" +
                "especificidades acadêmico-profissionais da área e abordando aspectos sócio-culturais da língua inglesa.", "4º"));
        lista.add(new Disciplina("Linguagem de Programação IV", "Comandos de linguagens usadas na construção e estruturação de sites\n" +
 "para a Web, com páginas dinâmi-cas e interativas. Definição de layouts e formatação em geral. Adição de algorítmos usando\n" +
 "laços, matrizes, datas, funções e condições. Introdução a Orientação a Objetos utilizando objetos, métodos e propriedades.\n" +
 "Integração com Banco de Dados. Exercícios práticos com projeto de criação de sites.", "4º"));
        lista.add(new Disciplina("Metodologia da Pesquisa Científico-Tecnológica", "O Papel da ciência e da tecnologia. Tipos de conhecimento.\n" +
"Método e técnica. O processo de leitura e de análise textual. Citações e bibliografias. Trabalhos acadêmicos: tipos, características\n" +
"e composição estrutural. O projeto de pesquisa experimental e não-experimental. Pesquisa qualitativa e quantitativa.\n" +
"Apresentação gráfica. Normas da ABNT.", "4º"));
        lista.add(new Disciplina("Programação Orientada á Objetos", "Conceitos e evolução da tecnologia de orientação a objetos. Limitações e diferenças\n" +
"entre o paradigma da programação estruturada em relação à orientação a objetos. Conceito de objeto, classe, métodos, atributos, herança,\n" +
"polimorfismo, agregação, associação, dependência, encapsulamento, mensagem e suas respectivas notações na linguagem padrão de\n" +
"representação da orientação a objetos. Implementação de algoritmos orientado a objetos utilizando linguagens de\n" +
"programação. Aplicação e uso das estruturas fundamentais da orientação a objetos.", "4º"));
        lista.add(new Disciplina("Sistemas Operacionais II", "Apresentação de um sistema operacional específico utilizado em ambiente corporativo. \n" +
"Requisitos de hardware para instalação do sistema. Processo de instalação, personalização, operação, administração e segurança\n" +
"sobre o sistema operacional focado. Elaboração de projetos de seleção e implantação de um sistema operacional.", "4º"));
        application.setAttribute("lista", lista);
    }
    double n = 0.00;
    if(request.getParameter("red")!=null){
        int i = Integer.parseInt(request.getParameter("i"));
        n = Double.parseDouble(request.getParameter("n"));
        Disciplina alt = lista.get(i);
        alt.setNota(n);
        response.sendRedirect(request.getRequestURI());
        
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Avaliação P1</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/head-reference.jspf" %>
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
        <hr/> 
        <h1 class="container-fluid">Minhas Disciplinas</h1>
        <hr/> 
        <table class="table table-bordered">
            <thead class="thead-dark">
              <tr>
                <th scope="col">Índice</th>
                <th scope="col">Matéria</th>
                <th scope="col">Ementa</th>
                <th scope="col">Ciclo</th>
                <th scope="col">Nota</th>
                <th scope="col">Comando</th>
              </tr>
            </thead>
            <tbody>
              <% for(int i = 0; i<lista.size(); i++){ %>       
              <tr>
                  <th scope="row"><%= i %></th>
                  <% Disciplina obj = lista.get(i); %>
                  <% Disciplina alt = lista.get(i); %>
                  <td style="background-color: #FAF0E6"><%= obj.getNome() %></td>
                  <td><%= obj.getEmenta() %></td>
                  <td style="background-color: #FAF0E6"><%= obj.getCiclo() %></td>
                  <td><%= alt.getNota() %></td>
                  <td>
                      <form>
                          Nota: 
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
