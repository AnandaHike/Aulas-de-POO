<%-- 
    Document   : pessoa
    Created on : 21 de set de 2020, 23:48:30
    Author     : nanda
--%>

<%@page import="java.util.Date"%>
<%@page import="br.edu.fatecpg.poo.Pessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Pessoa eu = new Pessoa();
    eu.nome = "Ananda";
    
    eu.pai = new Pessoa();
    eu.pai.nome = "Denis";
    eu.pai.pai = new Pessoa();
    eu.pai.pai.nome = "Danilo";
    eu.pai.mãe = new Pessoa();
    eu.pai.mãe.nome = "Nadge";
    
    eu.mãe = new Pessoa();
    eu.mãe.nome = "Magali";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Testes com OO</title>
    </head>
    <body>
        <h2><a href="index.jsp">Voltar</a></h2>
        <h1>POO</h1>
        <h2>Classe Pessoa</h2>
        <p>O pai de <%= eu.nome %> é <%= eu.pai.nome %></p>
        <p>O avô de <%= eu.nome %> é <%= eu.pai.pai.nome %></p>
    </body>
</html>
