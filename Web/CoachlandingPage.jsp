<%--
  Created by IntelliJ IDEA.
  User: zajeskyk231
  Date: 4/18/2019
  Time: 2:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%
    String username = session.getAttribute("username").toString();

%>
<html>
<head>
    <title>Welcome to Scrims and Ladders!</title>
    <link rel="stylesheet" type="text/css" href="HeaderTest.css";>
</head>

<body>
<div class="header">
    <div class="header-left">
        <a class="active" href="CoachlandingPage.jsp"> Home</a>
        <a  href="loggedInAbout.jsp">About</a>
        <a  href="loggedInFAQ.jsp">FAQ</a>
        <a  href="loggedInSupport.jsp">Support</a>
    </div>
    <div class="header-right">
        <a href="Coachprofile.jsp">Profile</a>
        <a href="Coachteam.jsp">Team</a>
        <a href="index.jsp"> Log Out</a>
    </div>
</div>
<div class="headerM">
    <br>
    Welcome to Scrims and Ladders <%=username%>!<br>
</div>
<div class="textBA">
    From here you can go to <a href="Coachprofile.jsp"> your profile</a> or check out <a href="Coachteam.jsp">your team</a>!

</div>
</body>
</html>
