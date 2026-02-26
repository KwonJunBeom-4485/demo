<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>학점 판정</title>
    </head>
    <body>
        <!-- choose의 자식으로 오는 태그 c:when, c:otherwise -->
        <c:choose>
            <c:when test="${param.point >= 90}">
                학점 : A
            </c:when>
            <c:when test="${param.point >= 80}">
                학점 : B
            </c:when>
            <c:when test="${param.point >= 70}">
                학점 : C
            </c:when>
            <c:otherwise>
                학점 : F
            </c:otherwise>
        </c:choose>
    </body>
</html>