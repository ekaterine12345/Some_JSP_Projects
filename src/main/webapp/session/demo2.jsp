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
    String name=(String)session.getAttribute("username");
    out.print("getting username here  "+name);
%>
</body>
</html>
