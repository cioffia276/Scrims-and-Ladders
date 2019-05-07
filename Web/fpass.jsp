<%--
  Created by IntelliJ IDEA.
  User: cioffia276
  Date: 5/7/2019
  Time: 6:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <link rel="stylesheet" type="text/css" href="HeaderTest.css";>
    <title>Forgot Password?</title>
</head>
<body>
<script>
    function forgot(){
        alert("Please send an email to scrimsandladders@gmail.com with the email associated with your account, and we'll sort it out for you!");
    }
</script>

<body onload="forgot()">

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
        <input type="password" value="" name="pw"><br>
        <div class="regularTexty" style="text-align: center; font-size: small;">
            <a href="fpass.jsp">Forgot your username or password?</a><br><br>
        </div>
        <br><br>
        <input type="submit" class="button" value="Log In!"><br>

    </div>

</form>


</body>
</html>
