<%-- 
    Document   : amortizacao-americana
    Created on : 4 de out de 2020, 16:59:12
    Author     : nanda
--%>

<%@page import="br.edu.fatecpg.poo.Disciplina"%>
<%@page import="br.edu.fatecpg.poo.web.DbListener"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
    String exceptionMessage = null;
    if(request.getParameter("FormInserir") != null){
        response.sendRedirect(request.getRequestURI());
    }
    if(request.getParameter("FormInserir") != null){
        try{
            String nome = request.getParameter("nome");
            String ementa = request.getParameter("ementa");
            String ciclo = request.getParameter("ciclo");
            double nota = Double.parseDouble(request.getParameter("nota"));
            Disciplina.inserirDisciplina(nome, ementa, ciclo, nota);
            response.sendRedirect(request.getRequestURI());
        }catch (Exception ex){
            exceptionMessage = ex.getLocalizedMessage();
        }
    }
    if(request.getParameter("FormAlterar") != null){
        try{
            String nome = request.getParameter("nome");
            double nota = Double.parseDouble(request.getParameter("nota"));
            Disciplina.alterarNota(nome, nota);
            response.sendRedirect(request.getRequestURI());
        }catch (Exception ex){
            exceptionMessage = ex.getLocalizedMessage();
        }
    }
    if(request.getParameter("FormExcluir") != null){
        try{
            String nome = request.getParameter("nome");
            Disciplina.excluirDisciplina(nome);
            response.sendRedirect(request.getRequestURI());
        }catch (Exception ex){
            exceptionMessage = ex.getLocalizedMessage();
        }
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
        <% if(request.getParameter("prepararDelete")!= null){ %>
                <fieldset>
                    <legend>Excluir Disciplina</legend>
                    <% String nome = request.getParameter("nome"); %>
                    <form method="post">
                        Excluir a disciplina <b><%= nome %></b>?<br>
                        <br>
                        <input type="hidden" name="nome" value="<%= nome %>"/>
                        <input type="submit" name="FormExcluir" value="Excluir"/>
                        <input type="submit" name="Cancelar" value="Cancelar"/>
                    </form>
                </fieldset>
            <% }else if(request.getParameter("prepararUpdate")!= null){ %>
                <fieldset>
                    <legend>Alterar Nota</legend>
                    <% String nome = request.getParameter("nome"); %>
                    <% double nota = Double.parseDouble(request.getParameter("nota")); %>
                    <form method="post">
                        <input type="hidden" name="nome" value="<%= nome %>"/>
                        <div>Nome: </div>
                        <div><input type="text" name="nome" value="<%= nome %>"/></div>
                        <div>Descrição: </div>
                        <div><input type="number" name="nota" step="0.01" min="0.00" max="10.00" value="<%= nota %>"/></div><br>
                        <input type="submit" name="FormAlterar" value="Alterar"/>
                        <input type="submit" name="Cancelar" value="Cancelar"/>
                    </form>
                </fieldset>
            <% }else if(request.getParameter("prepararInserir")!= null){ %>
                <fieldset>
                    <legend>Inserir Disciplina</legend>
                    <form method="post">
                        <div>Nome: </div>
                        <div><input type="text" name="nome"/></div>
                        <div>Ementa: </div>
                        <div><input type="text" name="ementa"/></div><br>
                        <div>Ciclo: </div>
                        <div><input type="text" name="ciclo"/></div><br>
                        <div>Nota: </div>
                        <div><input type="number" name="n" step="0.01" min="0.00" max="10.00"/></div><br>
                        <input type="submit" name="FormInserir" value="Inserir"/>
                        <input type="submit" name="Cancelar" value="Cancelar"/>
                    </form>
                </fieldset>
            <%}else {%>
            <form method="post">
                    <input type="submit" name="prepararInserir" value="Inserir"/>
            </form>
            <% } %>
        <table class="table table-bordered">
            <thead class="thead-dark">
              <tr>
                <th scope="col">Nome</th>
                <th scope="col">Ementa</th>
                <th scope="col">Ciclo</th>
                <th scope="col">Nota</th>
                <th scope="col">Comandos</th>
              </tr>
            </thead>
            <tbody>
              <% for(Disciplina d: Disciplina.getList()){ %>    
              <tr> 
                  <th scope="row"><%= d.getNome() %></th>
                  <td style="background-color: #FAF0E6"><%= d.getEmenta() %></td>
                  <td><%= d.getCiclo() %></td>
                  <td style="background-color: #FAF0E6"><%= d.getNota() %></td>
                  <td>
                      <form method="post">
                          <input type="hidden" name="nota" step="0.01" min="0.00" max="10.00" value="<%= d.getNota() %>"/>
                          <input type="hidden" name="nome" value="<%= d.getNome() %>"/>
                          <input type="submit" name="prepararUpdate" value="Redefinir"/>
                          <input type="submit" name="prepararDelete" value="Excluir"/>
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
