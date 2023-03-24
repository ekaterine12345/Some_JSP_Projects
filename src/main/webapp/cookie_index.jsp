<%--
  Created by IntelliJ IDEA.
  User: Ekaterine
  Date: 3/24/2023
  Time: 7:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cookies</title>
</head>
<body>
<form action="get_cookies.jsp">
    <%
        Cookie my_cookie_1 = new Cookie("first", "hi");
        Cookie my_cookie_2 = new Cookie("second", "hola");

        my_cookie_1.setMaxAge(60*60*24);
        my_cookie_2.setMaxAge(60*60*24);

        response.addCookie(my_cookie_1);
        response.addCookie(my_cookie_2);

        request.setAttribute("atr", "123");
    %>
   <button type="submit">Submit</button>
</form>



</body>
</html>
