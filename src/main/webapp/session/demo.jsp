<%--
  Created by IntelliJ IDEA.
  User: Ekaterine
  Date: 3/24/2023
  Time: 11:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  String username=request.getParameter("username");
  out.print("displaying the username here : "+username);
  session.setAttribute("username",username);
  request.setAttribute("a", username);
%>
<a href="demo2.jsp">another JSP page to get value</a>
</body>
</html>
