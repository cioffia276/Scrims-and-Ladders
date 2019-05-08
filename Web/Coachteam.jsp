<%--
  Created by IntelliJ IDEA.
  User: zajeskyk231
  Date: 4/18/2019
  Time: 2:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%
    String email = session.getAttribute("email").toString();
    String username = session.getAttribute("username").toString();
    String pType = session.getAttribute("pType").toString();
    String rank = session.getAttribute("rank").toString();
    String division = session.getAttribute("division").toString();
    String role = session.getAttribute("role").toString();
    String style = session.getAttribute("pStyle").toString();
    ResultSet rs = null;
    String top = null, jungle= null, mid = null, adc = null, support = null, coach = null;

    try{

        Class.forName("org.postgresql.Driver");
        Connection con = DriverManager.getConnection("jdbc:postgresql://104.130.207.9:5432/jackad","jackad","K1m19s!");
        if(pType.toLowerCase().equals("player")) {
            if (role.equals("Top")) {
                top = username;
                Statement pstmt = con.createStatement();
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'Jungle' and (pType = 'Player' or pType = 'player') and status = 'free'");
                if (rs.next()) {
                    jungle = rs.getString("username");
                }
                pstmt = con.createStatement();
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'Mid' and (pType = 'Player' or pType = 'player') and status = 'free'");
                if (rs.next()) {
                    mid = rs.getString("username");
                }
                pstmt = con.createStatement();
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'ADC' and (pType = 'Player' or pType = 'player') and status = 'free'");
                if (rs.next()) {
                    adc = rs.getString("username");
                }
                pstmt = con.createStatement();
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'Support' and (pType = 'Player' or pType = 'player') and status = 'free'");
                if (rs.next()) {
                    support = rs.getString("username");
                }
                pstmt = con.createStatement();
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and (pType = 'Coach' or pType = 'coach') and status = 'free'");
                if (rs.next()) {
                    coach = rs.getString("username");
                }
            } else if (role.equals("Jungle")) {
                jungle = username;
                Statement pstmt = con.createStatement();
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'Top' and (pType = 'Player' or pType = 'player') and status = 'free'");
                if (rs.next()) {
                    top = rs.getString("username");
                }
                pstmt = con.createStatement();
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'Mid' and (pType = 'Player' or pType = 'player') and status = 'free'");
                if (rs.next()) {
                    mid = rs.getString("username");
                }
                pstmt = con.createStatement();
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'ADC' and (pType = 'Player' or pType = 'player') and status = 'free'");
                if (rs.next()) {
                    adc = rs.getString("username");
                }
                pstmt = con.createStatement();
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'Support' and (pType = 'Player' or pType = 'player') and status = 'free'");
                if (rs.next()) {
                    support = rs.getString("username");
                }
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and (pType = 'Coach' or pType = 'coach') and status = 'free'");
                if (rs.next()) {
                    coach = rs.getString("username");
                }
            } else if (role.equals("Mid")) {
                mid = username;
                Statement pstmt = con.createStatement();
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'Jungle' and (pType = 'Player' or pType = 'player') and status = 'free'");
                if (rs.next()) {
                    jungle = rs.getString("username");
                }
                pstmt = con.createStatement();
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'Top' and (pType = 'Player' or pType = 'player') and status = 'free'");
                if (rs.next()) {
                    top = rs.getString("username");
                }
                pstmt = con.createStatement();
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'ADC' and (pType = 'Player' or pType = 'player') and status = 'free'");
                if (rs.next()) {
                    adc = rs.getString("username");
                }
                pstmt = con.createStatement();
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'Support' and (pType = 'Player' or pType = 'player') and status = 'free'");
                if (rs.next()) {
                    support = rs.getString("username");
                }
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and (pType = 'Coach' or pType = 'coach') and status = 'free'");
                if (rs.next()) {
                    coach = rs.getString("username");
                }
            } else if (role.equals("ADC")) {
                adc = username;
                Statement pstmt = con.createStatement();
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'Jungle' and (pType = 'Player' or pType = 'player') and status = 'free'");
                if (rs.next()) {
                    jungle = rs.getString("username");
                }
                pstmt = con.createStatement();
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'Mid' and (pType = 'Player' or pType = 'player') and status = 'free'");
                if (rs.next()) {
                    mid = rs.getString("username");
                }
                pstmt = con.createStatement();
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'Top' and (pType = 'Player' or pType = 'player') and status = 'free'");
                if (rs.next()) {
                    top = rs.getString("username");
                }
                pstmt = con.createStatement();
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'Support' and (pType = 'Player' or pType = 'player') and status = 'free'");
                if (rs.next()) {
                    support = rs.getString("username");
                }
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and (pType = 'Coach' or pType = 'coach') and status = 'free'");
                if (rs.next()) {
                    coach = rs.getString("username");
                }
            } else if (role.equals("Support")) {
                support = username;
                Statement pstmt = con.createStatement();
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'Jungle' and (pType = 'Player' or pType = 'player') and status = 'free'");
                if (rs.next()) {
                    jungle = rs.getString("username");
                }
                pstmt = con.createStatement();
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'Mid' and (pType = 'Player' or pType = 'player') and status = 'free'");
                if (rs.next()) {
                    mid = rs.getString("username");
                }
                pstmt = con.createStatement();
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'ADC' and (pType = 'Player' or pType = 'player') and status = 'free'");
                if (rs.next()) {
                    adc = rs.getString("username");
                }
                pstmt = con.createStatement();
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'Top' and (pType = 'Player' or pType = 'player') and status = 'free'");
                if (rs.next()) {
                    top = rs.getString("username");
                }
                rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and (pType = 'Coach' or pType = 'coach') and status = 'free'");
                if (rs.next()) {
                    coach = rs.getString("username");
                }
            }
        }
        else if(pType.toLowerCase().equals("coach") || pType.toLowerCase().equals("manager")) {
            coach = username;
            Statement pstmt = con.createStatement();
            rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'Jungle' and (pType = 'Player' or pType = 'player') and status = 'free'");
            if (rs.next()) {
                jungle = rs.getString("username");
            }
            pstmt = con.createStatement();
            rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'Mid' and (pType = 'Player' or pType = 'player') and status = 'free'");
            if (rs.next()) {
                mid = rs.getString("username");
            }
            pstmt = con.createStatement();
            rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'ADC' and (pType = 'Player' or pType = 'player') and status = 'free'");
            if (rs.next()) {
                adc = rs.getString("username");
            }
            pstmt = con.createStatement();
            rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'Support' and (pType = 'Player' or pType = 'player') and status = 'free'");
            if (rs.next()) {
                support = rs.getString("username");
            }
            pstmt = con.createStatement();
            rs = pstmt.executeQuery("SELECT username from playerbase where rank = '" + rank + "' and role = 'Top' and (pType = 'Player' or pType = 'player') and status = 'free'");
            if (rs.next()) {
                top = rs.getString("username");
            }

        }
        Statement pstmt = con.createStatement();
        int i = pstmt.executeUpdate("UPDATE playerbase set status = 'on team' where username = '"+top+"'");
        pstmt = con.createStatement();
        i = pstmt.executeUpdate("UPDATE playerbase set status = 'on team' where username = '"+jungle+"'");
        pstmt = con.createStatement();
        i = pstmt.executeUpdate("UPDATE playerbase set status = 'on team' where username = '"+mid+"'");
        pstmt = con.createStatement();
        i = pstmt.executeUpdate("UPDATE playerbase set status = 'on team' where username = '"+adc+"'");
        pstmt = con.createStatement();
        i = pstmt.executeUpdate("UPDATE playerbase set status = 'on team' where username = '"+support+"'");
        pstmt = con.createStatement();
        i = pstmt.executeUpdate("UPDATE playerbase set status = 'on team' where username = '"+coach+"'");

        pstmt = con.createStatement();
        ResultSet rs3 = pstmt.executeQuery("SELECT * from teams where coach ='"+coach+"'");
        if(!rs.next()){}
        else {
            pstmt = con.createStatement();
            i = pstmt.executeUpdate("INSERT into teams(coach,top,jungle,mid,adc,support) values('" + coach + "','" + top + "','" + jungle + "','" + mid + "','" + adc + "','" + support + "' )");
        }
        pstmt = con.createStatement();
        rs = pstmt.executeQuery("SELECT jungle from teams where coach = '"+ coach +"'");
        if (rs.next()) {
            jungle = rs.getString("jungle");
        }
        pstmt = con.createStatement();
        rs = pstmt.executeQuery("SELECT mid from teams where coach = '"+ coach +"'");
        if (rs.next()) {
            mid = rs.getString("mid");
        }
        pstmt = con.createStatement();
        rs = pstmt.executeQuery("SELECT adc from teams where coach = '"+ coach +"'");
        if (rs.next()) {
            adc = rs.getString("adc");
        }
        pstmt = con.createStatement();
        rs = pstmt.executeQuery("SELECT support from teams where coach = '"+ coach +"'");
        if (rs.next()) {
            support = rs.getString("support");
        }
        pstmt = con.createStatement();
        rs = pstmt.executeQuery("SELECT top from teams where coach = '"+ coach +"'");
        if (rs.next()) {
            top = rs.getString("top");
        }

        con.close();
    }

    catch(SQLException e){
        out.println(e);
    }
    if(top == null){
        top = "No available player!";
    }
    if(jungle == null){
        jungle = "No available player!";
    }
    if(mid == null){
        mid = "No available player!";
    }
    if(adc == null){
        adc = "No available player!";
    }
    if(support == null){
        support = "No available player!";
    }
%>
<html>
<head>
    <title>Team Page</title>
    <link rel="stylesheet" type="text/css" href="HeaderTest.css";>
</head>
<script>
    function makeTeam(){
        document.getElementById("top1").innerHTML = '<%=top%>';
        document.getElementById("jungle1").innerHTML = '<%=jungle%>';
        document.getElementById("mid1").innerHTML = '<%=mid%>';
        document.getElementById("adc1").innerHTML = '<%=adc%>';
        document.getElementById("support1").innerHTML = '<%=support%>';
        var elem = document.getElementById('teamButton');
        elem.parentNode.removeChild(elem);

    }
</script>
<body>
<div class="header">
    <div class="header-left">
        <a href="landingPage.jsp"> Home</a>
        <a  href="loggedInAbout.jsp">About</a>
        <a  href="loggedInFAQ.jsp">FAQ</a>
        <a  href="loggedInSupport.jsp">Support</a>
    </div>
    <div class="header-right">
        <a  href="Coachprofile.jsp">Profile</a>
        <a class="active" href="Coachteam.jsp">Team</a>
        <a href="index.jsp"> Log Out</a>
    </div>
</div>
<div class="headerM" style="font-size: 40px">
    Your Team:
</div>
<div class="textYA">
    <br>
    Coach / Manager:<p> <%=coach%> </p>
    <br>
    Top: <p id="top1"></p>
    <br>
    Jungle: <p id="jungle1"></p>
    <br>
    Mid: <p id="mid1"></p>
    <br>
    ADC: <p id="adc1"></p>
    <br>
    Support: <p id="support1"></p>
    <br>
</div>
<div class="button" id="teamButton">
    <button onclick="makeTeam()">Create a Team</button>
</div>

</body>
</html>
