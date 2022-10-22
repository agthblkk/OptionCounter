<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>Prog Academy</title>
</head>
<body>
<%String x = (String)session.getAttribute("x");%>
<%String y = (String)session.getAttribute("y");%>
<%String x1 = (String)session.getAttribute("x1");%>
<%String y1 = (String)session.getAttribute("y1");%>
<% if (x == null || y == null || x1 == null || y1 == null){ %>
<form action = "/exit" method = "POST">
    <h1>welcome to quiz!!</h1>
    <p>choose your fav lang</p>
    HTML<input type = "radio" name = "lang" value = "HTML"><br>
    CSS<input type = "radio" name = "lang" value = "CSS"><br>
    <p>choose your fav tv-show</p>
    BRIDGERTONS<input type = "radio" name = "show" value = "bridgertons"><br>
    TEENWOLF<input type = "radio" name = "show" value = "teenwolf"><br>
    <br>
    <input type="submit" />
</form>
<% } else { %>
<table>
    <tr>
        <th>Option</th>
        <th>Counters</th>
    </tr>
    <tr>
        <td>HTML</td>
        <td><%= x%></td>
    </tr>
    <tr>
        <td>CSS</td>
        <td><%= y%></td>
    </tr>
    <tr>
        <td>BRIDGERTONS</td>
        <td><%= y1%></td>
    </tr>
    <tr>
        <td>TEENWOLF</td>
        <td><%= x1%></td>
    </tr>
    <br>Click this link to <a href="/exit?a=exit">exit</a>
        <% } %>
</body>
</html>

