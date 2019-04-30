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
    String top = null, jungle= null, mid = null, adc = null, support = null, coach = null;

    try{

        Class.forName("org.postgresql.Driver");
        Connection con = DriverManager.getConnection("jdbc:postgresql://104.130.207.9:5432/jackad","jackad","K1m19s!");
        if(pType.toLowerCase().equals("player")) {
            if (role.equals("Top")) {
                top = username;
                Statement pstmt = con.createStatement();
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'Jungle' and (pType = 'Player' or pType = 'player')");
                if (rs.next()) {
                    jungle = rs.getString("username");
                }
                pstmt = con.createStatement();
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'Mid' and (pType = 'Player' or pType = 'player')");
                if (rs.next()) {
                    mid = rs.getString("username");
                }
                pstmt = con.createStatement();
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'ADC' and (pType = 'Player' or pType = 'player')");
                if (rs.next()) {
                    adc = rs.getString("username");
                }
                pstmt = con.createStatement();
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'Support' and (pType = 'Player' or pType = 'player')");
                if (rs.next()) {
                    support = rs.getString("username");
                }
                pstmt = con.createStatement();
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and (pType = 'Coach' or pType = 'coach')");
                if (rs.next()) {
                    coach = rs.getString("username");
                }
            } else if (role.equals("Jungle")) {
                jungle = username;
                Statement pstmt = con.createStatement();
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'Top' and (pType = 'Player' or pType = 'player')");
                if (rs.next()) {
                    top = rs.getString("username");
                }
                pstmt = con.createStatement();
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'Mid' and (pType = 'Player' or pType = 'player')");
                if (rs.next()) {
                    mid = rs.getString("username");
                }
                pstmt = con.createStatement();
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'ADC' and (pType = 'Player' or pType = 'player')");
                if (rs.next()) {
                    adc = rs.getString("username");
                }
                pstmt = con.createStatement();
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'Support' and (pType = 'Player' or pType = 'player')");
                if (rs.next()) {
                    support = rs.getString("username");
                }
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and (pType = 'Coach' or pType = 'coach')");
                if (rs.next()) {
                    coach = rs.getString("username");
                }
            } else if (role.equals("Mid")) {
                mid = username;
                Statement pstmt = con.createStatement();
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'Jungle' and (pType = 'Player' or pType = 'player')");
                if (rs.next()) {
                    jungle = rs.getString("username");
                }
                pstmt = con.createStatement();
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'Top' and (pType = 'Player' or pType = 'player')");
                if (rs.next()) {
                    top = rs.getString("username");
                }
                pstmt = con.createStatement();
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'ADC' and (pType = 'Player' or pType = 'player')");
                if (rs.next()) {
                    adc = rs.getString("username");
                }
                pstmt = con.createStatement();
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'Support' and (pType = 'Player' or pType = 'player')");
                if (rs.next()) {
                    support = rs.getString("username");
                }
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and (pType = 'Coach' or pType = 'coach')");
                if (rs.next()) {
                    coach = rs.getString("username");
                }
            } else if (role.equals("ADC")) {
                adc = username;
                Statement pstmt = con.createStatement();
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'Jungle' and (pType = 'Player' or pType = 'player')");
                if (rs.next()) {
                    jungle = rs.getString("username");
                }
                pstmt = con.createStatement();
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'Mid' and (pType = 'Player' or pType = 'player')");
                if (rs.next()) {
                    mid = rs.getString("username");
                }
                pstmt = con.createStatement();
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'Top' and (pType = 'Player' or pType = 'player')");
                if (rs.next()) {
                    top = rs.getString("username");
                }
                pstmt = con.createStatement();
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'Support' and (pType = 'Player' or pType = 'player')");
                if (rs.next()) {
                    support = rs.getString("username");
                }
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and (pType = 'Coach' or pType = 'coach')");
                if (rs.next()) {
                    coach = rs.getString("username");
                }
            } else if (role.equals("Support")) {
                support = username;
                Statement pstmt = con.createStatement();
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'Jungle' and (pType = 'Player' or pType = 'player')");
                if (rs.next()) {
                    jungle = rs.getString("username");
                }
                pstmt = con.createStatement();
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'Mid' and (pType = 'Player' or pType = 'player')");
                if (rs.next()) {
                    mid = rs.getString("username");
                }
                pstmt = con.createStatement();
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'ADC' and (pType = 'Player' or pType = 'player')");
                if (rs.next()) {
                    adc = rs.getString("username");
                }
                pstmt = con.createStatement();
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'Top' and (pType = 'Player' or pType = 'player')");
                if (rs.next()) {
                    top = rs.getString("username");
                }
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and (pType = 'Coach' or pType = 'coach')");
                if (rs.next()) {
                    coach = rs.getString("username");
                }
            }
        }
        else if(pType.toLowerCase().equals("coach") || pType.toLowerCase().equals("manager")) {
            coach = username;
            Statement pstmt = con.createStatement();
            rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'Jungle' and (pType = 'Player' or pType = 'player')");
            if (rs.next()) {
                jungle = rs.getString("username");
            }
            pstmt = con.createStatement();
            rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'Mid' and (pType = 'Player' or pType = 'player')");
            if (rs.next()) {
                mid = rs.getString("username");
            }
            pstmt = con.createStatement();
            rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'ADC' and (pType = 'Player' or pType = 'player')");
            if (rs.next()) {
                adc = rs.getString("username");
            }
            pstmt = con.createStatement();
            rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'Support' and (pType = 'Player' or pType = 'player')");
            if (rs.next()) {
                support = rs.getString("username");
            }
            pstmt = con.createStatement();
            rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'Top' and (pType = 'Player' or pType = 'player')");
            if (rs.next()) {
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
<div class="header-left">
    <a href="landingPage.jsp"> Home</a>
    <a  href="loggedInAbout.jsp">About</a>
    <a  href="loggedInFAQ.jsp">FAQ</a>
    <a  href="loggedInSupport.jsp">Support</a>
</div>
<div class="header-right">
    <a  href="profile.jsp">Profile</a>
    <a class="active" href="team.jsp">Team</a>
    <a href="index.jsp"> Log Out</a>
</div>

Your Team:
<br>
Coach / Manager: <%=coach%>
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
