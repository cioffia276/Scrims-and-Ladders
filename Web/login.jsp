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
<%
  String email = null, password = null;
%>
<html>
<head>
  <title>Login in!</title>
  <link rel="stylesheet" type="text/css" href="HeaderTest.css";>
  <style> </style>
</head>

<script>
  function sendIt(){
      <%
      password = request.getParameter("pw");
      email = request.getParameter("email");
      session.setAttribute("email",email);
      session.setAttribute("password", password);
      %>
  }
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
<form method ="post" action="emailPWCheck.jsp">
  <div class="regularTexty" style = "text-align: center;">
  Email:<br>
  <input type="text" value="" name="email"><br><br>
  Password:<br>
  <input type="password" value="" name="pw"><br><br>
    <div class="regularTexty" style="text-align: center; font-size: small;">
      <a href="fpass.jsp">Forgot your username or password?</a><br><br>
    </div>
  <br><br>
    <input type="submit" class="button" value="Log In!"><br>

  </div>

</form>


</body>
</html>
