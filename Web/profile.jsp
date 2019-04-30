<%--
  Created by IntelliJ IDEA.
  User: zajeskyk231
  Date: 4/18/2019
  Time: 2:17 PM
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





    %>
<html>
<head>
    <title>Your Profile</title>
    <link rel="stylesheet" type="text/css" href="HeaderTest.css";>
</head>
<script>

</script>
<body >
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
<div class="regularTextb">
    Name: <%=username%>
    <br>
    Rank: <%=rank%> <%=division%>
    <br>
    Role: <%=role%>
    <br>
    Player Style: <%=style%>
</div>
</body>
</html>
