<%@ page import="java.io.FileWriter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Success</title>
</head>
<body>
<h1>You registered successfully</h1>
<%
    try(FileWriter writer = new FileWriter("C:\\Users\\Влад\\Desktop\\123.txt")) {
        StringBuilder builder = new StringBuilder();
        builder.append(request.getParameter("name")).append(" ").append(request.getParameter("password"));
        writer.write(builder.toString());
        writer.flush();
    }
%>
</body>
</html>
