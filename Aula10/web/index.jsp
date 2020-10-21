<%-- 
    Document   : index
    Created on : 20 de out de 2020, 21:17:03
    Author     : nanda
--%>

<%@page import="database.TasksConnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    String erro = null;
    try{
        if(request.getParameter("insert")!= null){
            String name = request.getParameter("name");
            TasksConnector.insertTasks(name);
            response.sendRedirect(request.getRequestURI());
    }
    }catch (Exception ex){
        erro = "Erro ao inserir nova tarefa "+ex.getMessage();
    }
    try{
        if(request.getParameter("delete")!= null){
            String name = request.getParameter("name");
            TasksConnector.deleteTasks(name);
            response.sendRedirect(request.getRequestURI());
    }
    }catch (Exception ex){
        erro = "Erro ao excluir nova tarefa "+ex.getMessage();
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tarefas - SQlites</title>
    </head>
    <body>
        <h1>SQlite</h1>
        <h2>Tarefaz</h2>
        <form>
            <input type="text" name="name"/>
            <input type="submit" name="insert" value="Inserir Tarefa"/>
            <hr/>
            <% if(erro != null) { %>
            <div style="color: red"><%= erro %><div/>
            <%}%>
            <hr/>
            <table border="1">
                <tr>
                    <th>Nome</th>
                    <th>Comando</th>
                </tr>
                <% for(String name: TasksConnector.getTasks()){ %>
                <tr>
                    <td><%= name %></td>
                    <td>
                        <input type="hidden" name="name" value="<%=name%>"/>
                        <input type="submit" name="delete" value="Excluir"/>
                    </td>
                </tr>
                <%}%>
            </table>
        </form>
    </body>
</html>
