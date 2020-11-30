<%-- 
    Document   : index
    Created on : 30 de nov de 2020, 00:49:44
    Author     : nanda
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="br.edu.fatecpg.poo.Disciplina"%>
<%@page import="br.edu.fatecpg.poo.web.DbListener"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Avaliação P1</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/head-reference.jspf" %>
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
        <div class="container-fluid">
            <h2>Ananda Hike Bunetti Fernandes</h2>
            <h4>RA: 1290481912001</h4>
            <h5>Quantidade de matérias cursadas nesse semestre: <%= Disciplina.getList().size() %></h5>
        </div>  
        <%@include file="WEB-INF/jspf/body-reference.jspf" %>
    </body>
</html>

