<%-- 
    Document   : tabuada
    Created on : 31 de ago de 2020, 17:19:41
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
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Java Server Pages</h1>
        <h2>Tabuada</h2>
        <div>
            <form>
                Quantidade:
                <input type="number" name="n"/>
                <input type="submit" name="Gerar"/>
            </form>
        </div>
        <hr/>
        <% if(request.getParameter("n") == null){ %>
            <div>Entre com um número</div>
        <% }else if(erro != null){ %>
            <div><%= erro %></div>
        <% }else {%>
            <table>
                <% for(int i = 1; i<=10; i++){ %>
                    <tr>
                        <td><%= n %></td>  
                        <td>x</td>
                        <td><%= i %></td>
                        <td>=</td>
                        <td><%= (n*i) %></td>
                    </tr>
                <%}%>
            </table>
            <%}%>
            <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
