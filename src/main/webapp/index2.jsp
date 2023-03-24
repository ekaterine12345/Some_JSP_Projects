<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: Ekaterine
  Date: 3/24/2023
  Time: 6:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Index2</title>
</head>
<body>
<%
    String first_name = request.getParameter("first_name");
    String password = request.getParameter("password");
    out.print(first_name+" "+password);
    out.print("\n");

    Enumeration e = request.getParameterNames();
    while (e.hasMoreElements()){
        String param_name = (String) e.nextElement();
        out.print(param_name+"\n");
    } //first_name password
    out.print("<br>"+e); //java.util.Collections$3@59dfd374

    out.print("<h2> request.getParameterValues(\"password\") <h2>");
    String[] allpasswords = request.getParameterValues("password"); // თუკი ორი ინფუთი იქნება name-ით password
    // მაშინ ორივერს მნიშვნელობას წამოიღებს. თუკი მხოლოდ ერთი ინფუთი მექნება name-ით password, მაშინ როგორც
    // request.getParameter("password"); ისე მუშაობს

    for(String pass : allpasswords){
        out.print("<br>"+pass);
    }

    out.print("getAttribute(String name)");
    out.print((String) request.getAttribute("my_attr"));



    out.print("<br>"+"Headers"+"<br>");
    out.print("content-length = "+ request.getHeader("content-length")+"<br>");
    out.print("sec-fetch-mode = "+ request.getHeader("sec-fetch-mode")+"<br>");
    Enumeration enumeration = request.getHeaderNames();
    while (enumeration.hasMoreElements()) {
        String str = (String)enumeration.nextElement();
        out.println(str+"="+request.getHeader(str));
    }

    out.print("<br>");
    out.print(request.getMethod()+"<br>");
    out.print(request.getRequestURL()+"<br>");
    out.print(request.getRequestURI()+"<br>");
    out.print(request.getQueryString()+"<br>");

    out.print("<br>"+"<h2>other methods of Request<h2>"+"<br>");
    out.print(request.getSession()+"<br>");
    out.print(request.getContentType()+"<br>");
    out.print(request.getProtocol()+"<br>");
    out.print(request.getRemoteAddr()+"<br>");
    out.print(request.getServerName()+"<br>");
    out.print(request.getServerPort()+"<br>");
    out.print(request.isSecure()+"<br>");


    request.setAttribute("myname", "nameeeeeeeee");
    out.print(request.getAttribute("myname")+"<br>");
%>
</body>
</html>
