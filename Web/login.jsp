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
  <title>$Title$</title>
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
Page 1
<form id="frm1" method ="post" action="process.jsp">
  Username:<br>
  <input type="text" value="" name="username"><br>
  Password:<br>
  <input type="password" value="" id="password1"><br>
  Confirm Password:<br>
  <input type="password" value="" id="password2"><br>
  Email:<br>
  <input type="text" value="" name="email"><br>
  <br><br>
  <input type="submit" value="submit">
</form>
<button onclick="print()">Print</button>

<p id="demo"></p>




</body>
</html>
