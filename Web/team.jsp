<%--
  Created by IntelliJ IDEA.
  User: zajeskyk231
  Date: 4/18/2019
  Time: 2:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%
    String email = session.getAttribute("email").toString();
    String username = session.getAttribute("username").toString();
    String pType = session.getAttribute("pType").toString();
    String rank = session.getAttribute("rank").toString();
    String division = session.getAttribute("division").toString();
    String role = session.getAttribute("role").toString();
    String style = session.getAttribute("pStyle").toString();
    ResultSet rs = null;
    String top = null, jungle= null, mid = null, adc = null, support = null;

    try{

        Class.forName("org.postgresql.Driver");
        Connection con = DriverManager.getConnection("jdbc:postgresql://104.130.207.9:5432/jackad","jackad","K1m19s!");
        if(role.equals("Top")){
            top = username;
            Statement pstmt=con.createStatement();
            rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank +"' and role = 'Jungle'");
            if(rs.next()) {
                jungle = rs.getString("username");
            }
            pstmt=con.createStatement();
            rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank +"' and role = 'Mid'");
            if(rs.next()) {
                mid = rs.getString("username");
            }
            pstmt=con.createStatement();
            rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank +"' and role = 'ADC'");
            if(rs.next()) {
                adc = rs.getString("username");
            }
            pstmt=con.createStatement();
            rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank +"' and role = 'Support'");
            if(rs.next()) {
                support = rs.getString("username");
            }
        }
        else if(role.equals("Jungle")){
            jungle = username;
            Statement pstmt=con.createStatement();
            rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank +"' and role = 'Top'");
            if(rs.next()) {
                top = rs.getString("username");
            }
            pstmt=con.createStatement();
            rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank +"' and role = 'Mid'");
            if(rs.next()) {
                mid = rs.getString("username");
            }
            pstmt=con.createStatement();
            rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank +"' and role = 'ADC'");
            if(rs.next()) {
                adc = rs.getString("username");
            }
            pstmt=con.createStatement();
            rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank +"' and role = 'Support'");
            if(rs.next()) {
                support = rs.getString("username");
            }
        }
        else if(role.equals("Mid")){
            mid = username;
            Statement pstmt=con.createStatement();
            rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank +"' and role = 'Jungle'");
            if(rs.next()) {
                jungle = rs.getString("username");
            }
            pstmt=con.createStatement();
            rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank +"' and role = 'Top'");
            if(rs.next()) {
                top = rs.getString("username");
            }
            pstmt=con.createStatement();
            rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank +"' and role = 'ADC'");
            if(rs.next()) {
                adc = rs.getString("username");
            }
            pstmt=con.createStatement();
            rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank +"' and role = 'Support'");
            if(rs.next()) {
                support = rs.getString("username");
            }
        }
        else if(role.equals("ADC")){
            adc = username;
            Statement pstmt=con.createStatement();
            rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank +"' and role = 'Jungle'");
            if(rs.next()) {
                jungle = rs.getString("username");
            }
            pstmt=con.createStatement();
            rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank +"' and role = 'Mid'");
            if(rs.next()) {
                mid = rs.getString("username");
            }
            pstmt=con.createStatement();
            rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank +"' and role = 'Top'");
            if(rs.next()) {
                top = rs.getString("username");
            }
            pstmt=con.createStatement();
            rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank +"' and role = 'Support'");
            if(rs.next()) {
                support = rs.getString("username");
            }
        }
        else if(role.equals("Support")){
            support = username;
            Statement pstmt=con.createStatement();
            rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank +"' and role = 'Jungle'");
            if(rs.next()) {
                jungle = rs.getString("username");
            }
            pstmt=con.createStatement();
            rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank +"' and role = 'Mid'");
            if(rs.next()) {
                mid = rs.getString("username");
            }
            pstmt=con.createStatement();
            rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank +"' and role = 'ADC'");
            if(rs.next()) {
                adc = rs.getString("username");
            }
            pstmt=con.createStatement();
            rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank +"' and role = 'Top'");
            if(rs.next()) {
                top = rs.getString("username");
            }
        }



        con.close();
    }

    catch(SQLException e){
        out.println(e);
    }

%>
<html>
<head>
    <title>Team Page</title>
    <link rel="stylesheet" type="text/css" href="HeaderTest.css";>
</head>
<body>
<div class="header">
    <div class="header-left">
        <a href="index.jsp"> Home</a>
        <a class="active" href="About.jsp">About</a>
        <a href="FAQ.jsp">FAQ</a>
        <a href="Support.jsp">Support</a>
    </div>
    <div class="header-right">
        <a href="profile.jsp">Profile</a>
        <a href="team.jsp">Team</a>
        <a class="active" href="index.jsp"> Log Out</a>
    </div>
</div>

Your Team:
<br>
Top: <%=top%>
<br>
Jungle: <%=jungle%>
<br>
Mid: <%=mid%>
<br>
ADC: <%=adc%>
<br>
Support: <%=support%>
<br>

</body>
</html>
