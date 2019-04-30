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
    String username, email,password, rank,division, role, style, pType;

    username=request.getParameter("username");
    password=request.getParameter("pw1");
    email=request.getParameter("email");

    pType = request.getParameter("type");
    rank=request.getParameter("rank");
    division=request.getParameter("division");
    role=request.getParameter("role");
    style=request.getParameter("style");
    try{
        Class.forName("org.postgresql.Driver");
        Connection con = DriverManager.getConnection("jdbc:postgresql://104.130.207.9:5432/jackad","jackad","K1m19s!");




            Statement pstmt=con.createStatement();

             int i=pstmt.executeUpdate("insert into playerbase(username, pw, email ,pType, rank, division, role, pStyle )" +
                     " values('"+username+"','"+password+"','"+email+"','"+pType+"','"+rank+"','"+division+"','"+role+"','"+style+"')");





            con.close();




    }
    catch(SQLException e){
        out.println(e);
    }
    session.setAttribute("username",username);
    session.setAttribute("email",email);
    session.setAttribute("pType",pType);
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
        window.location.href = "landingPage.jsp";
        return false;
    }
</script>
<body onload="login()">

</body>
</html>
