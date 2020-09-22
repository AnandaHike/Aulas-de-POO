<%-- 
    Document   : data
    Created on : 21 de set de 2020, 23:46:41
    Author     : nanda
--%>

<%@page import="br.edu.fatecpg.poo.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Data hoje = new Data(21, 9, 2020);
    Data nasc = new Data();
    nasc.setDia(1);
    nasc.setMês(7);
    nasc.setAno(1979);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>POO - Data</title>
    </head>
    <body>
        <h2><a href="index.jsp">Voltar</a></h2>
        <h1>POO</h1>
        <h2>Classe Data</h2>
        <h3>Hoje: <%= hoje.getDia()+"/"+hoje.getMês()+"/"+hoje.getAno() %></h3>
        <h3>Nascimento: <%= nasc.getDia() %>/<%= nasc.getMês() %>/<%= nasc.getAno() %></h3>
    </body>
</html>