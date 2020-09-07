<%-- 
    Document   : numeros-aleatotrios-parametrizado
    Created on : 31 de ago de 2020, 17:11:19
    Author     : nanda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String erro = null;
    int n;
    try{
        n = Integer.parseInt(request.getParameter("n"));
    }catch (Exception ex){
        n=0;
        if(request.getParameter("n") != null)
            erro = "Número inválido como parâmetro";
            
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Números Aleatórios Parametrizados</title>
    </head>
    <body>
        <h1>Java Server Pages</h1>
        <h2>Números Aleatórios Parametrizados</h2>
        <div>
            <form>
                Quantidade:
                <input type="number" name="n"/>
                <input type="submit" value="Gerar"/>
            </form>
        </div>
        <hr/>
        <% if (request.getParameter("n") == null){ %>
            <div>Entre com um número</div>
        <% }else if(erro != null){ %>
            <div><%= erro %></div>
        <% }else{ %>
        <table border="1">
            <tr>
                <th>Sequência</th>
                <th>Número</th>
            </tr>
            <% for(int i = 1; i<=n; i++){ %>
                <tr>
                    <th><%= i %></th>
                    <td><%= ((int)(Math.random()*100)) %></td>
                </tr>
            <%}%>
        <%}%>
        </table>
        <h3><a href="index.jsp">Voltar</a></h3>
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
