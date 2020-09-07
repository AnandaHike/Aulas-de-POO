<%-- 
    Document   : date-with-expression
    Created on : 5 de set de 2020, 00:39:10
    Author     : nanda
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Java Server Page</h1>
        <h2>Data/Hora do servidor com expression</h2>
            <h3>Agora no Servidor: <u><%= new Date() %></u></h3>
        <h3><a href="index.jsp">Voltar</a></h3>
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
