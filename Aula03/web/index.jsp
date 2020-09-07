<%-- 
    Document   : index
    Created on : 4 de set de 2020, 23:48:15
    Author     : nanda
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index - JSP</title>
    </head>
    <body>
        <h1>Java Server Page</h1>
        <h2>Index</h2>
        <h3><a href="date-with-scriptlet.jsp">Data/Hora do servidor com scriptlet</a></h3>
        <h3><a href="date-with-expression.jsp">Data/Hora do servidor com expression</a></h3>
        <h3><a href="date-with-scriptlet-and-expression.jsp">Data/Hora do servidor com scriptlet e expression</a></h3>
        <h3><a href="mostrar-idade.jsp">Minha idade</a></h3>
        <h3><a href="numeros-aleatorios.jsp">Números aleatórios</a></h3>
        <h3><a href="numeros-aleatotrios-parametrizado.jsp">Números aleatórios parametrizado</a></h3>
        <h3><a href="tabuada.jsp">Tabuada</a></h3>
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
