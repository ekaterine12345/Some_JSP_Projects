<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: Ekaterine
  Date: 3/24/2023
  Time: 7:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  Cookie cookies[] = request.getCookies();

  Map<String, String> map = new HashMap<>();
  for(int i=0; i< cookies.length; i++)
  {
    Cookie cookie = cookies[i];
    //   cookie.getValue();
    String name = cookie.getName();
    String value = cookie.getValue();
    out.print(i+"");
    out.print( name+"   ");
    out.print(value);
    out.print("<br>");
    map.put(name, value);
  }
out.print((String)request.getAttribute("atr"));

//  Enumerator e = request.getAttributeNames();
//  final Enumeration<String> attrs = request.getAttributeNames();
//  if (attrs != null) {
//    String attrName = null;
//    while (attrs.hasMoreElements()) {
//      attrName = attrs.nextElement();
//      out.print(attrName + " " + request.getAttribute(attrName));
//      context.put(attrName, request.getAttribute(attrName));
    }
  }
%>
</body>
</html>
