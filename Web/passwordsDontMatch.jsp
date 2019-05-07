<%--
  Created by IntelliJ IDEA.
  User: zajeskyk231
  Date: 4/16/2019
  Time: 3:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
<head>
    <title>Signup</title>
    <link rel="stylesheet" type="text/css" href="HeaderTest.css" ;>
</head>

<script>
    function alert1(){
        alert("Passwords do not match!");
    }


    function login(){
        window.location.href = "landingPage.jsp";
        return false;
    }
</script>

<body onload="alert1()">




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

<div class="headerM" style="font-size: 40px">
    Sign up!
</div>
<form method="post"   action="insert.jsp" >
    <div class="textYA" style="text-align: center">
        <div>
            <br>
            Username:
            <br>
            <input type="text" name="username" />
        </div>
        <br>
        <div>
            Password:
            <br>
            <input type="password" name="pw1" />
        </div>
        <br>
        <div>
            Confirm Password:
            <br>
            <input type="password" name="pw2" />
        </div>
        <br>
        <div>
            Email:
            <br>
            <input type="text" name="email" />
        </div>
        <div class="regularText">
            <br><br>Player Type:
            <br>
            <div style="display: block; position: relative;">

                <input type="radio" checked="checked" name ="type" value="Player"> Player<br>
                <input type="radio" name ="type" value="Coach"> Coach<br>
                <input type="radio" name ="type" value="Manager"> Manager<br>
            </div>
            <br>
            <div>
                Rank:<br>
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
            <br><br>
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
            <input  type="submit"  value="Sign Up!" class="button" />
        </div>
    </div>
</form>
</body>
</html>
