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
        <a href="CoachlandingPage.jsp"> Home</a>
        <a  href="Coachabout.jsp">About</a>
        <a  href="CoachFAQ.jsp">FAQ</a>
        <a  href="Coachsupport.jsp">Support</a>
    </div>
    <div class="header-right">
        <a class="active" href="Coachprofile.jsp">Profile</a>
        <a href="Coachteam.jsp">Team</a>
        <a href="index.jsp"> Log Out</a>
    </div>
</div>

<div class="headerM" style="font-size: 40px">
    Your Profile!<hr>
</div>

<div class="textYA" style="text-align: center">
    <br><br><br>
    <b>Name:</b> <%=username%> <br>
    <br>
    <b>Rank:</b> <%=rank%> <%=division%><br>
    <br>
    <b>Role:</b> <%=role%><br>
    <br>
    <b>Player Style:</b> <%=style%><br>
    <button class="button">
        <a href="Coachedit.jsp">Edit Profile</a>
    </button>
</div>



</body>
</html>
