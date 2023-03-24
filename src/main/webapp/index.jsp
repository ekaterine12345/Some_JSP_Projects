<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %></h1>


<form method="post" action="./index2.jsp">
    <label for="first_name">First Name</label>
    <input type="text" name="first_name" value="" placeholder="please enter your name...">
    <br>

    <label for="password">Password</label>
    <input type="password" name="password" value="" placeholder="enter your password">
    <br>

    <label for="password">Password</label>
    <input type="password" name="password" value="" placeholder="enter your password">
    <br>

    <%


        request.setAttribute("my_attr", "hello");
    %>
    <input type="submit" value="submit">
</form>




<a href="hello-servlet">Hello Servlet</a>
</body>
</html>