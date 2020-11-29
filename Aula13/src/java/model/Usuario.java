/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import java.sql.*;
import web.DbListener;

/**
 *
 * @author nanda
 */
public class Usuario {
    private String login;
    private String nome;
    private String role;
    
    public static Usuario getUser(String login, String password)throws Exception{
        Usuario user = null;
        Connection con = DbListener.getConnection();
        PreparedStatement stmt = con.prepareStatement("SELECT * FROM usuarios WHERE login = ? AND password_hash = ?");
        stmt.setString(1, login);
        stmt.setLong(2, password.hashCode());
        ResultSet rs = stmt.executeQuery();
        while(rs.next()){
            user = new Usuario (
                    rs.getString("login"),
                    rs.getString("nome"),
                    rs.getString("role")
            );
        }
        rs.close();
        stmt.close();
        con.close();
        return user;
    }
    public static void changePassword(String login, String newPassword)throws Exception{
        Connection con = DbListener.getConnection();
        PreparedStatement stmt = con.prepareStatement("UPDATE usuarios SET password_hash = ? WHERE login = ?");
        stmt.setLong(1, newPassword.hashCode());
        stmt.setString(2, login);
        stmt.execute();
        stmt.close();
        con.close();
    }
    public static ArrayList<Usuario> getList()throws Exception{
        ArrayList<Usuario> list = new ArrayList<>();
        Connection con = DbListener.getConnection();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM usuarios");
        while(rs.next()){
            list.add(new Usuario (
                    rs.getString("login"),
                    rs.getString("nome"),
                    rs.getString("role")
            ));
        }
        rs.close();
        stmt.close();
        con.close();
        return list;
    }

    public Usuario(String login, String nome, String role) {
        this.login = login;
        this.nome = nome;
        this.role = role;
    }
    

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getRole() {
        return role;
    }

    public void setPapel(String role) {
        this.role = role;
    }
    
    public static String getCreateStatement (){
    
    return "CREATE TABLE IF NOT EXISTS usuarios("
            + "login VARCHAR (50) UNIQUE NOT NULL,"
            + "nome VARCHAR (200) NOT NULL,"
            + "role VARCHAR (20) NOT NULL,"
            + "password_hash LONG NOT NULL"
            + ")";
}
    
}
