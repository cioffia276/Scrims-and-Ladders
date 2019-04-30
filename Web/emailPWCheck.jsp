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
    String username, email,password, rank = null,division=null, role=null, style=null, pType=null;
    ResultSet rs = null;
    email = session.getAttribute("email").toString();
    password = session.getAttribute("password").toString();




%>

<html>
<head>
    <title>Title</title>
</head>
<script>
    function login(){
        <%
        try{
        Class.forName("org.postgresql.Driver");
        Connection con = DriverManager.getConnection("jdbc:postgresql://104.130.207.9:5432/jackad","jackad","K1m19s!");




        Statement pstmt=con.createStatement();

        rs = pstmt.executeQuery("SELECT * from playerbase where email = " + email);

        if(rs == null){
            %>
            window.location.href("loginFail1.jsp");
        <%
        }
        else{
            String pw =rs.getString("pw");
            if(pw != password){
                %>
                window.location.href("loginFail2.jsp");
                <%
            }
            else{
                username = rs.getString("username");
                session.setAttribute("username",username);
                session.setAttribute("pType",rs.getString("pType"));
                session.setAttribute("rank",rs.getString("rank"));
                session.setAttribute("division",rs.getString("division"));
                session.setAttribute("role",rs.getString("role"));
                session.setAttribute("pStyle", rs.getString("pStyle"));
                %>
                window.location.href("landingPage.jsp");
            <%
            }
        }







        con.close();




    }
    catch(SQLException e){
        out.println(e);
    }
        %>
    }
</script>
<body onload="login()">

</body>
</html>
