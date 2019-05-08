<%--
  Created by IntelliJ IDEA.
  User: zajeskyk231
  Date: 4/29/2019
  Time: 4:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%
    String username, email,password1, password2, rank,division, role, style, pType;


   email = session.getAttribute("email").toString();
    rank=request.getParameter("rank");
    division=request.getParameter("division");
    role=request.getParameter("role");
    style=request.getParameter("style");
    try{
        Class.forName("org.postgresql.Driver");

        Connection con = DriverManager.getConnection("jdbc:postgresql://104.130.207.9:5432/jackad","jackad","K1m19s!");

        if(!rank.equals("")){
            Statement pstmt = con.createStatement();
            int i = pstmt.executeUpdate("UPDATE playerbase set rank = '" + rank + "' where email = '"+email+"'");
        }
        if(!division.equals("")){
            Statement pstmt = con.createStatement();
            int i = pstmt.executeUpdate("UPDATE playerbase set division = '" + division + "' where email = '"+email+"'");
        }
        if(!role.equals("")){
            Statement pstmt = con.createStatement();
            int i = pstmt.executeUpdate("UPDATE playerbase set role = '" + role + "' where email = '"+email+"'");
        }
        if(!style.equals("")){
            Statement pstmt = con.createStatement();
            int i = pstmt.executeUpdate("UPDATE playerbase set pstyle = '" + style + "' where email = '"+email+"'");
        }




        con.close();




    }
    catch(SQLException e){
        out.println(e);
    }

    session.setAttribute("rank",rank);
    session.setAttribute("division",division);
    session.setAttribute("role",role);
    session.setAttribute("pStyle", style);

%>


<html>
<head>
    <title>Title</title>
</head>
<script>
    function login(){
        window.location.href = "Coachprofile.jsp";
        return false;
    }
</script>
<body onload="login()">

</body>
</html>
