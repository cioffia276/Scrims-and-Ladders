<%--
  Created by IntelliJ IDEA.
  User: zajeskyk231
  Date: 4/16/2019
  Time: 3:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
    <title>Signup</title>
    <link rel="stylesheet" type="text/css" href="HeaderTest.css";>
</head>

<script>
    function insert(){
        var x = document.getElementById("signup");


        <sql:update dataSource = "${snapshot}" var = "result">
        INSERT INTO userinfo VALUES(x.elements[0],x.elements[1],x.elements[2],x.elements[3],x.elements[4]);
        </sql:update>
    }
</script>

<body>

<sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
    url = "104.130.207.9"
    user = "jackad"  password = "K1m19s!"/>


<div class="header">
    <div class="header-left">
        <a href="index.jsp"> Home</a>
        <a href="About.jsp">About</a>
        <a href="FAQ.jsp">FAQ</a>
        <a href="Support.jsp">Support</a>
    </div>
    <div class="header-right">
        <a href="login.jsp">Login</a>
        <a href="signup.jsp">Sign Up</a>
    </div>
</div>


<form id="signup" method="post">
    <div class="regularText">
    Player Type:
    <br>
        <div>
    <input type="radio" name ="type" value="Player"> Player<br>
    <input type="radio" name ="type" value="Coach"> Coach<br>
    <input type="radio" name ="type" value="Manager"> Manager<br>
        </div>
    <br>
        <div>
    Rank:
    <select name="Rank">
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
    <br><br>
    Division:
    <select name="Division">
        <option value="IV">IV</option>
        <option value="III">III</option>
        <option value="II">II</option>
        <option value="I">I</option>
    </select>
    <br><br>
    Role:
    <select name="Role">
        <option value="Top">Top</option>
        <option value="Jungle">Jungle</option>
        <option value="Mid">Mid</option>
        <option value="ADC">ADC</option>
        <option value="Support">Support</option>
    </select>
    <br><br>
    Play Style:
    <select name ="Style">
        <option value="Casual">Casual</option>
        <option value="Core">Core</option>
        <option value="Hardcore">Hardcore</option>
    </select>
    <br><br>
    <button class="button">
        <a href="landingPage.jsp">Sign up!</a>
    </div>
</form>
</body>
</html>
