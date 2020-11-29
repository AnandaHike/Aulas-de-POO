<%-- 
    Document   : index
    Created on : 9 de nov de 2020, 16:55:33
    Author     : nanda
--%>

<%@page import="model.Usuario"%>
<%@page import="web.DbListener"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
    String exceptionMessage = null;
    if(request.getParameter("FormAlterarSenha")!= null){
        try{
        String senhaAtual = request.getParameter("senhaAtual");
        String senhaNova = request.getParameter("senhaNova");
        String senhaNovaConfirmacao = request.getParameter("senhaNovaConfirmacao");
        String login = (String) session.getAttribute("session.login");
        Usuario u = Usuario.getUser(login, senhaAtual);
        
        if(u == null){
            exceptionMessage = "Senha Inválida";
        } else{
            if(!senhaNova.equals(senhaNovaConfirmacao)){
                exceptionMessage = "Senha nova e confirmação de senha estão diferentes";
            } else {
                Usuario.changePassword(login, senhaNova);
                response.sendRedirect(request.getRequestURI());
            }
        }
    }catch (Exception ex){
        exceptionMessage = ex.getLocalizedMessage();
    }
    }
    
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Meu perfil - FINANCY$</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>Meu perfil</h2>
        <%if(session.getAttribute("session.login")==null){%>
            <div>É preciso estar logado para acessar essa página</div>
        <%}else {%>
        <h3>Login</h3>
            <div><%= session.getAttribute("session.login") %></div>
            <h3>Nome</h3>
            <div><%= session.getAttribute("session.nome") %></div>
            <h3>Papel</h3>
            <div><%= session.getAttribute("session.role") %></div><br>
            <% if(exceptionMessage != null){ %>
            <div style="color: red"><%= exceptionMessage %></div>
            <% } %>
            <fieldset>
                <legend>Alterar Senha</legend>
                <form method="post">
                    <div>Senha Atual: </div>
                    <div><input type="password" name="senhaAtual"/></div>
                    <div>Nova Senha: </div>
                    <div><input type="password" name="senhaNova"/></div>
                    <div>Confirmar Senha: </div>
                    <div><input type="password" name="senhaNovaConfirmacao"/></div><br>
                    <input type="submit" name="FormAlterarSenha" value="Redefinir"/>
                </form>
            </fieldset>
        <%}%>
    </body>
</html>
