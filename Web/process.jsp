<%--
  Created by IntelliJ IDEA.
  User: zajeskyk231
  Date: 4/16/2019
  Time: 2:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    String email = request.getParameter("email");

    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn =
                DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
        Statement st = conn.createStatement();

        int i = st.executeUpdate("insert into users(username,password,email)values('"+username+"','"+
        password+"','"+email+"')");
    }
    catch(Exception e){
        System.out.print(e);
        e.printStackTrace();
    }

%>
