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
    String currentRank = rank;

    try {

        Class.forName("org.postgresql.Driver");
        Connection con = DriverManager.getConnection("jdbc:postgresql://104.130.207.9:5432/jackad", "jackad", "K1m19s!");
        Statement pstmt = con.createStatement();
        //pulls the players team from the teams database if they are apart of one
        rs = pstmt.executeQuery("SELECT * FROM teams where "+role.toLowerCase()+"= '"+username+"'");
        if(rs.next()) {
            coach = rs.getString("coach");
            top = rs.getString("top");
            jungle = rs.getString("jungle");
            mid = rs.getString("mid");
            adc = rs.getString("adc");
            support = rs.getString("support");
        }
        con.close();
    }
    catch(SQLException e){
        out.println(e);
    }
    if(coach == null){
        coach = "Open spot";
    }
    if(top == null){
        top = "Open spot";
    }
    if(jungle == null){
        jungle = "Open spot";
    }
    if(mid == null){
        mid = "Open spot";
    }
    if(adc == null){
        adc = "Open spot";
    }
    if(support == null){
        support = "Open spot";
    }
%>
<html>
<head>
    <title>Team Page</title>
    <link rel="stylesheet" type="text/css" href="HeaderTest.css";>
</head>
<script>
    function makeTeam(){
        document.getElementById("top1").innerHTML = <%=top%>;
        document.getElementById("jungle1").innerHTML = <%=jungle%>;
        document.getElementById("mid1").innerHTML = <%=mid%>;
        document.getElementById("adc1").innerHTML = <%=adc%>;
        document.getElementById("support1").innerHTML = <%=support%>;
    }
</script>
<body>
<div class="header">
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
</div>
<div class="headerM" style="font-size: 40px">
Your Team:
</div>
<div class="textYA">
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
</div>


</body>
</html>
