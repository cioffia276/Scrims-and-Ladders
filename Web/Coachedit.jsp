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
        <a href="Coachprofile.jsp">Profile</a>
        <a href="Coachteam.jsp">Team</a>
        <a href="index.jsp"> Log Out</a>
    </div>
</div>

<div class="headerM" style="font-size: 40px">
    Edit your Profile!<hr>
</div>
<div class="textYA" style="text-align: center">
<form  method="post"   action="Coachupdate.jsp" >
    <div>
    Rank:
    <select name="rank">
        <option value="Iron">Iron</option>
        <option value="Silver">Silver</option>
        <option value="Gold">Gold</option>
        <option value="Platinum">Platinum</option>
        <option value="Diamond">Diamond</option>
        <option value="Master">Master</option>
        <option value="Grandmaster">Grandmaster</option>
        <option value="Challenger">Challenger</option>
    </select>
</div>
<br>
Division:
<select name="division">
    <option value="IV">IV</option>
    <option value="III">III</option>
    <option value="II">II</option>
    <option value="I">I</option>
</select>
<br><br>
Role:
<select name="role">
    <option value="Top">Top</option>
    <option value="Jungle">Jungle</option>
    <option value="Mid">Mid</option>
    <option value="ADC">ADC</option>
    <option value="Support">Support</option>
</select>
<br><br>
Play Style:
<select name ="style">
    <option value="Casual">Casual</option>
    <option value="Core">Core</option>
    <option value="Hardcore">Hardcore</option>
</select>
<br><br>
<input  type="submit"  value="Make Changes!" class="button" />

</form>
</div>

</body>
</html>
