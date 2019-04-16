<%--
  Created by IntelliJ IDEA.
  User: zajeskyk231
  Date: 4/16/2019
  Time: 3:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Signup</title>
</head>
<body>
<form>
    Player Type:
    <br>
    <input type="radio" name ="type" value="Player"> Player<br>
    <input type="radio" name ="type" value="Coach"> Coach<br>
    <input type="radio" name ="type" value="Manager"> Manager<br>
    <br>
    Rank:
    <select name="Rank">
        <option value="Iron">Iron</option>
        <option value="Silver">Silver</option>
        <option value="Gold">Gold</option>
        <option value="Platinum">Platinum</option>
        <option value="Diamond">Diamond</option>
        <option value="Master">Master</option>
        <option value="Grandmaster">Grandmaster</option>
        <option value="Challenger">Challenger</option>
    </select>
    <br><br>
    Division:
    <select name="Division">
        <option value="IV">IV</option>
        <option value="III">III</option>
        <option value="II">II</option>
        <option value="I">I</option>
    </select>
    <br><br>
    Role:
    <select name="Role">
        <option value="Top">Top</option>
        <option value="Jungle">Jungle</option>
        <option value="Mid">Mid</option>
        <option value="ADC">ADC</option>
        <option value="Support">Support</option>
    </select>
    <br><br>
    Play Style:
    <select name ="Style">
        <option value="Casual">Casual</option>
        <option value="Core">Core</option>
        <option value="Hardcore">Hardcore</option>
    </select>
    <br><br>
    <input type="submit" value="Sign Up!">

</form>
</body>
</html>
