<%-- 
    Document   : index
    Created on : 9 de nov de 2020, 16:55:33
    Author     : nanda
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="model.Transacao"%>
<%@page import="model.Categoria"%>
<%@page import="model.Usuario"%>
<%@page import="web.DbListener"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
    String exceptionMessage = null;
    if(request.getParameter("FormInserir") != null){
        response.sendRedirect(request.getRequestURI());
    }
    if(request.getParameter("FormInserir") != null){
        try{
            String datahora = request.getParameter("datahora");
            String descricao = request.getParameter("descricao");
            String categoria = request.getParameter("categoria");
            double valor = Double.parseDouble(request.getParameter("valor"));
            String origem = request.getParameter("origem");
            Transacao.inserirTansacao(datahora, descricao, categoria, valor, origem);
            response.sendRedirect(request.getRequestURI());
        }catch (Exception ex){
            exceptionMessage = ex.getLocalizedMessage();
        }
    }
    if(request.getParameter("FormAlterar") != null){
        try{
            long rowId = Long.parseLong(request.getParameter("rowId"));
            String datahora = request.getParameter("datahora");
            String descricao = request.getParameter("descricao");
            String categoria = request.getParameter("categoria");
            double valor = Double.parseDouble(request.getParameter("valor"));
            String origem = request.getParameter("origem");
            Transacao.alterarTansacao(rowId, datahora, descricao, categoria, valor, origem);
            response.sendRedirect(request.getRequestURI());
        }catch (Exception ex){
            exceptionMessage = ex.getLocalizedMessage();
        }
    }
    if(request.getParameter("FormExcluir") != null){
        try{
            long rowId = Long.parseLong(request.getParameter("rowId"));
            Transacao.excluirTransacao(rowId);
            response.sendRedirect(request.getRequestURI());
        }catch (Exception ex){
            exceptionMessage = ex.getLocalizedMessage();
        }
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transações - FINANCY$</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>Transações</h2>
        <%if(session.getAttribute("session.login")==null){%>
            <div>É preciso estar logado para acessar essa página</div>
        <%}else {%>
            <% if(exceptionMessage != null){ %>
            <div style="color: red"><%= exceptionMessage %></div>
            <% } %>
            <% if(request.getParameter("prepararDelete")!= null){ %>
                <fieldset>
                    <legend>Excluir Transação</legend>
                    <% String rowId = request.getParameter("rowId"); %>
                    <form method="post">
                        Excluir a transação <b><%= rowId %></b>?<br>
                        <br>
                        <input type="hidden" name="rowId" value="<%= rowId %>"/>
                        <input type="submit" name="FormExcluir" value="Excluir"/>
                        <input type="submit" name="Cancelar" value="Cancelar"/>
                    </form>
                </fieldset>
            <% }else if(request.getParameter("prepararUpdate")!= null){ %>
                <fieldset>
                    <legend>Alterar Transacao</legend>
                    <% 
                        String transacaoExceptionMessage = null;
                        Transacao t = null;
                        try{
                            long rowId = Long.parseLong(request.getParameter("rowId")); 
                            t = Transacao.getTransacao(rowId);
                        }catch (Exception ex){
                            transacaoExceptionMessage = ex.getLocalizedMessage();
                        }
                    %>
                    <% if(transacaoExceptionMessage!=null){ %>
                    <div style="color: red"><%= transacaoExceptionMessage %></div>
                    <% } else if(t==null){ %>
                        <div>Transação não encontrada porque provavelmente foi excluída por outro usuário</div>  
                    <% }else{ %>
                        <form method="post">
                            <div>ID: </div>
                            <div><b><%= t.getRowId() %></b></div><br>
                            <input style="hidden" name="rowId" value="<%= t.getRowId() %>"/>
                            <div>Data/Hora </div>
                            <div><input type="datetime-local" name="datahora" value="<%= t.getDatahora() %>"/></div><br>
                            <div>Descrição: </div>
                            <div><input type="text" name="descricao" value="<%= t.getDescricao() %>"/></div><br>
                            <div>Categoria: </div>
                            <div>
                                <select name="categoria">
                                    <option value=""></option>
                                    <% for(Categoria c: Categoria.getList()){ %>
                                    <option value="<%= c.getNome() %>" <%= c.getNome().equals(t.getCategoria())?"selected":"" %>><%= c.getNome() %></option>
                                    <% } %>
                                </select>
                            </div><br>
                            <div>Valor: </div>
                            <div><input type="number" step="0.01" name="valor" value="<%= t.getValor() %>"/></div><br>
                            <div>Origem: </div>
                            <div><input type="text" name="origem" value="<%= t.getOrigem() %>"/></div><br>
                            <input type="submit" name="FormAlterar" value="Alterar"/>
                            <input type="submit" name="Cancelar" value="Cancelar"/>
                        </form>
                    <% } %>
                    
                </fieldset>
            <% }else if(request.getParameter("prepararInserir")!= null){ %>
                <fieldset>
                    <legend>Inserir Transação</legend>
                    <form method="post">
                        <div>Data/Hora </div>
                        <div><input type="datetime-local" name="datahora" value="<%= new SimpleDateFormat("yyyy-MM-dd'T'hh:mm").format(new Date()) %>"/></div><br>
                        <div>Descrição: </div>
                        <div><input type="text" name="descricao"/></div><br>
                        <div>Categoria: </div>
                        <div>
                            <select name="categoria">
                                <option value=""></option>
                                <% for(Categoria c: Categoria.getList()){ %>
                                <option value="<%= c.getNome() %>"><%= c.getNome() %></option>
                                <% } %>
                            </select>
                        </div><br>
                        <div>Valor: </div>
                        <div><input type="number" step="0.01" name="valor"/></div><br>
                        <div>Origem: </div>
                        <div><input type="text" name="origem"/></div><br>
                        <input type="submit" name="FormInserir" value="Inserir"/>
                        <input type="submit" name="Cancelar" value="Cancelar"/>
                    </form>
                </fieldset>
            <%}else {%>
            <form method="post">
                    <input type="submit" name="prepararInserir" value="Inserir"/>
                </form>
            <% } %>
            <h3>Lista de Transações</h3>
            <table border="1">
                <tr>
                    <th>ID</th>
                    <th>Data/Hora</th>
                    <th>Descrição</th>
                    <th>Categoria</th>
                    <th>Valor</th>
                    <th>Orgem</th>
                    <th>Comandos</th>
                </tr>
                <% for(Transacao t: Transacao.getList()){ %>
                <tr>
                    <td><%= t.getRowId() %></td>
                    <td><%= t.getDatahora() %></td>
                    <td><%= t.getDescricao() %></td>
                    <td><%= t.getCategoria() %></td>
                    <% String cor = t.getValor()<0? "red": "green"; %>
                    <td style="color: <%= cor %>; text-align: right"><%= new DecimalFormat("#,###,###.00").format(t.getValor()) %></td>
                    <td><%= t.getOrigem() %></td>
                    <td>
                        <form method="post">
                            <input type="hidden" name="rowId" value="<%= t.getRowId() %>"/>
                            <input type="submit" name="prepararUpdate" value="Alterar"/>
                            <input type="submit" name="prepararDelete" value="Excluir"/>
                        </form>
                    </td>
                </tr>
                <%}%>
            </table>
        <%}%>
    </body>
</html>
