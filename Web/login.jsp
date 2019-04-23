<%--
  Created by IntelliJ IDEA.
  User: zajeskyk231
  Date: 4/11/2019
  Time: 2:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<html>
<head>
  <title>Login in!</title>
  <link rel="stylesheet" type="text/css" href="HeaderTest.css";>
  <style> </style>
</head>

<script>
  function print(){
      var x = document.getElementById("frm1");
      var text = "";
      var i;
      for(i = 0; i<x.length; i++){
          text += x.elements[i].value+"<br>";
      }
      document.getElementById("demo").innerHTML = text;
  }
</script>

<body>
<div class="header">
  <div class="header-left">
    <a href="index.jsp"> Home</a>
    <a href="About.jsp">About</a>
    <a href="FAQ.jsp">FAQ</a>
    <a href="Support.jsp">Support</a>
  </div>
  <div class="header-right">
    <a class="active" href="login.jsp">Login</a>
    <a href="signup.jsp">Sign Up</a>
  </div>


</div>

<div class="headerM">Login!<br><br><br>
</div>
<form id="frm1" method ="post" action="process.jsp">
  <div class="regularTexty" style = "text-align: center;">
  Username:<br>
  <input type="text" value="" name="username"><br>
  Password:<br>
  <input type="password" value="" id="password1"><br>
  <br><br>
  </div>


</form>
<p style="text-align: center">
  <button class="button">
    <a href="landingPage.jsp">LOG IN</a>
  </button>
</p>

</body>
</html>
