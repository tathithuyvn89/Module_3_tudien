<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: BKComputer
  Date: 6/2/2020
  Time: 9:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Translate</title>
</head>
<body>
<%! Map<String,String> dic = new HashMap<>();
%>
<%
    dic.put("hello","Xin chào");
    dic.put("mother","Mẹ");
    dic.put("brother","Anh trai");
    dic.put("goodbye","Tạm biệt");
    String search = request.getParameter("search");
    String result = dic.get(search);
    if(result!=null){
        out.println("Word: "+search);
        out.println("Result: "+result);
    } else {
        out.println("Not found result");
    }
%>

</body>
</html>
