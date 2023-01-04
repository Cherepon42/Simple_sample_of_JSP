<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>User Info</title>
    <style>
        input:invalid {
            background-color: rgba(255, 183, 152, 0.28);
            outline: 2px solid red;
        }
</style>

</head>
<body>
<%  if(request.getMethod().equals("POST")) {
    request.getRequestDispatcher("/successfully_registration.jsp").forward(request, response);
}%>

<form action="my_registration.jsp" method="post">
    Имя: <input style="margin: 10px" title="Имя должно быть не менее 6 символов и иметь хотя бы 1 цифру"
                id="nameInput"
                name="name"
                type="text"
                minlength="6"
                maxlength="20"
                pattern="(?=.*[0-9])(?=.*[a-z])[0-9a-zA-Z]{6,}"/>
    <br>
    Пароль: <input style="margin: 10px" title="Пароль должен быть не менее 6 символов и содержать цифру и заглавную букву"
                   id="passwordInput"
                   name="password"~
                   type="password"
                   minlength="6"
                   maxlength="20"
                   pattern="(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z]{6,}"/>
    <br>
    <input style="margin: 10px" type="submit" value="Зарегистрироваться" />
</form>

<%--<%= name.length()%>--%>
<%--<%= password.length()%>--%>
<%--<%= request.getMethod()%>--%>
</body>
</html>