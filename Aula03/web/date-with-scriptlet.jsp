<%-- 
    Document   : date-with-scriptlet
    Created on : 5 de set de 2020, 00:24:29
    Author     : nanda
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data com Scriptlet - JSP</title>
    </head>
    <body>
        <h1>Java Server Page</h1>
        <h2>Data/Hora do servidor com scriptlet</h2>
            <%
                Date agora = new java.util.Date();
                out.println("Agora, no servidor: "+ agora);
            %>
        <h3><a href="index.jsp">Voltar</a></h3>
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
