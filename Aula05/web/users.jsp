<%-- 
    Document   : cadastros
    Created on : 21 de set de 2020, 18:12:00
    Author     : nanda
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="br.edu.fatecpg.poo.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ArrayList<User> usersList = (ArrayList)application.getAttribute("usersList");
    if(usersList == null){
        usersList = new ArrayList<>();
        usersList.add(new User("admin", "admin@domain.com", "1234"));
        usersList.add(new User("Fulano", "fulano@domain.com", "1234"));
        usersList.add(new User("Beltrano", "beltrano@domain.com", "1234"));
        usersList.add(new User("Cicrano", "cicrano@domain.com", "1234"));
        application.setAttribute("usersList", usersList);
    }
    if(request.getParameter("add")!=null){
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        usersList.add(new User(name, email, password));
        response.sendRedirect(request.getRequestURI());
    }
    if(request.getParameter("remove")!=null){
        int i = Integer.parseInt(request.getParameter("i"));
        usersList.remove(i);
        response.sendRedirect(request.getRequestURI());
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>POO - Usuários</title>
    </head>
    <body>
        <h2><a href="index.jsp">Voltar</a></h2>
        <h1>POO</h1>
        <h2>Usuários</h2>
        <form>
            Name: <input type="text" name="name" />
            Email: <input type="text" name="email" />
            Senha: <input type="password" name="password" />
            <input type="submit" value="Adicionar" name="add" />
        </form>
        <hr/>
        <table border="1">
            <tr>
                <th>Índice</th>
                <th>Nome</th>
                <th>Email</th>
                <th>Comandos</th>
            </tr>
            <%for(int i=0; i<usersList.size(); i++){%>
            <tr>
                <td><%= i %></td>
                <% User u = usersList.get(i); %>
                <td><%= u.getName() %></td>
                <td><%= u.getEmail() %></td>
                <td>
                    <form>
                        <input type="hidden" name="i" value="<%= i %>"/>
                        <input type="submit" name="remove" value="Remover"/>
                    </form>
                </td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
