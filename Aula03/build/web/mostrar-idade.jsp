<%-- 
    Document   : mostrar-idade
    Created on : 31 de ago de 2020, 16:02:45
    Author     : nanda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Minha Idade - JSP</title>
    </head>
    <body>
        <h1>Java Server Pages</h1>
        <h2>Minha Idade</h2>
        
        <%
            int anoAtual = Calendar.getInstance().get(Calendar.YEAR);
            int anoNascimento = 2000;
            int idade = anoAtual-anoNascimento;
        %>
        
        <h3>Meu nome: <u>Ananda Hike Brunetti Fernandes</u></h3>
        <h3>Minha idade: <u><%= idade %> anos</u></h3>
        <h3><a href="index.jsp">Voltar</a></h3>
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
