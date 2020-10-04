<%-- 
    Document   : index
    Created on : 4 de out de 2020, 18:26:09
    Author     : nanda
--%>

<%@page import="br.edu.fatecpg.poo.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="WEB-INF/jspf/head-reference.jspf" %>
        <title>Início</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <div class="container-fluid">
            
        <h1>Avaliação Bimestral - P1</h1>  
        <h2>Ananda Hike Brunetti Fernandes</h2>
        <h3>RA: 1290481912001</h3>
        <% Disciplina obj = new Disciplina ("nome", "ementa", "ciclo"); %>
        <h4>Quantidade de matéria: <%= obj.getList().size() %> </h4>
        </div>
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
        <%@include file="WEB-INF/jspf/body-reference.jspf" %>
      
    </body>
</html>
