<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>redirect</title>
    </head>
    <body>
        <%-- redirect : 특정 값을 지정한 url로 전달할 때 사용 --%>
        <c:redirect url="redirecttest.jsp">
            <c:param name="abc" value="안녕하세연" />
        </c:redirect>
    </body>
</html>