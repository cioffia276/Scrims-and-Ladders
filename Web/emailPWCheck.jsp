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
    String username = null, email,password, rank = null,division=null, role=null, style=null, pType=null;
    ResultSet rs = null;
    email = request.getParameter("email");
    password = request.getParameter("pw");
    try{

        Class.forName("org.postgresql.Driver");
        Connection con = DriverManager.getConnection("jdbc:postgresql://104.130.207.9:5432/jackad","jackad","K1m19s!");




        Statement pstmt=con.createStatement();
        rs = pstmt.executeQuery("SELECT * from playerbase where email = '" + email +"'");

//checks if the email is registered or not
        if(!rs.next()){

%>
<html>
<script>
window.location.href("loginFail2.jsp");
</script>
</html>
<%
}
else{
//checks to see if the correct password was entered for the account
    String pw =rs.getString("pw");
    if(!pw.equals(password)){
%>
<html>
<script>
window.location.href("loginFail1.jsp");
</script>
</html>
<%
}
else{


    session.setAttribute("username",rs.getString("username"));
    session.setAttribute("email",email);
    session.setAttribute("pType",rs.getString("ptype"));
    session.setAttribute("rank",rs.getString("rank"));
    session.setAttribute("division",rs.getString("division"));
    session.setAttribute("role",rs.getString("role"));
    session.setAttribute("pStyle", rs.getString("pStyle"));
    pType = session.getAttribute("pType").toString();

    if(pType.equals("player") || pType.equals( "Player")){
    %>
    <html>
    <script>
        window.location.href("landingPage.jsp");
    </script>
    </html>
    <%
                    }
    else if(pType.equals("Coach") || pType.equals("Manager")){
    %>
<html>
<script>
    window.location.href("CoachlandingPage.jsp");
</script>
</html>
<%
                    }

}
    }
        con.close();
    }

    catch(SQLException e){
    out.println(e);
}

%>


<html>
<head>
    <title>Title</title>
</head>
<script>
    function login1(){


                window.location.href("landingPage.jsp");

        return false;
    }
</script>
<body >

</body>
</html>
