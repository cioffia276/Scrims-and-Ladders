<%--
  Created by IntelliJ IDEA.
  User: cioffia276
  Date: 4/11/2019
  Time: 9:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <!-- This is how to set up a page! The title is what appears on the bar-->
    <title>Home. Of SaL</title>
    <!--Style is how the page is formatted
    This has been moved to the .css to clear up space.-->
    <link rel="stylesheet" type="text/css" href="HeaderTest.css";>
    <!--.Header is the basic set up of the header
        .header a is the elements within the 'a' header
        .header a:hover makes it so it is highlighted when it is hovered by the mouse
        .header a.active is the active tab
        .header-left is the text on the left side
        .header-right is the text on the right side
        @media sets the element-->
  </head>
  <body>
  <div class="header">
    <!--<a href="#default" class ="logo">Logo goes here</a>-->
    <div class="header-left">
      <a class="active" href="index.jsp"> Home</a>
      <a href="About.jsp">About</a>
      <a href="FAQ.jsp">FAQ</a>
      <a href="Support.jsp">Support</a>
     </div>
    <div class="header-right">
      <a href="login.jsp">Login</a>
      <a href="signup.jsp">Sign Up</a>
    </div>
  </div>

  <div class="headerMp">
    <br>
      ARE YOU TIRED OF NOT HAVING FRIENDS TO MAKE A TEAM WITH? <br>
    <br>ARE YOU TIRED OF SUCKING AT LOL?<br>
      <br>ARE YOU TIRED OF 1V9ING ALL OF YOUR GAMES?<br>

    <div class="pMp" >
      <br> <br> WELCOME <br> TO <br> SCRIMS AND LADDERS</div>

    <p>
      <br>
      <br>
      <button class="button">
        <a href="login.jsp">LOG IN</a>
      </button>
      <button class="button">
        <a href="signup.jsp">SIGN UP</a>
    </button>
    </p>
  </div>

  </body>
</html>
