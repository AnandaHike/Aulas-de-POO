<%-- 
    Document   : numeros-aleatorios
    Created on : 31 de ago de 2020, 16:44:35
    Author     : nanda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Números Aleatórios - JSP</title>
    </head>
    <body>
        <h1>Java Server Pages</h1>
        <h2>Números Aleatórios</h2>
        
        <% for(int i = 1; i<=10; i++){ %>
        <div><%= ((int)(Math.random()*100)) %></div>
        <%}%>
        <h3><a href="index.jsp">Voltar</a></h3>
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
