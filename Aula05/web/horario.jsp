<%-- 
    Document   : horario
    Created on : 21 de set de 2020, 16:10:41
    Author     : nanda
--%>
<%@page import="java.util.Date"%>
<%@page import="br.edu.fatecpg.poo.Horario" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Date hoje = new java.util.Date();
    Horario horaAtual = new Horario();
    Horario horaIntervalo = new Horario();
    
    horaAtual.hora = hoje.getHours();
    horaAtual.minuto = hoje.getMinutes();
    horaAtual.segundo = hoje.getSeconds();
    
    horaIntervalo.hora = 16;
    horaIntervalo.minuto = 45;
    horaIntervalo.segundo = 00;
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hora</title>
    </head>
    <body>
        <h1>Instanciando Objetos</h1>
        <h2>Hora Atual: <%= horaAtual.hora %></h2>
        <h2>Minuto Atual: <%= horaAtual.minuto %></h2>
        <h2>Segundo Atual: <%= horaAtual.segundo %></h2><br>
        <h2>Hora Intervalo: <%= horaIntervalo.hora %></h2>
        <h2>Minuto Intervalo: <%= horaIntervalo.minuto %></h2>
        <h2>Segundo Intervalo: <%= horaIntervalo.segundo %></h2><br>
    </body>
</html>
