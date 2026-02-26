<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>jstl 테스트를 위한 form</title>
    </head>
    <body>
        <h2>if절 확인</h2>
        <form action="jstlif.jsp">
            이름 : <input type="text" name="name"><br>
            나이 : <input type="text" name="age"><br>
            <input type="submit" value="확인">
        </form>

        <h2>choose절 확인</h2>
        <form action="jstl_choose.jsp">
            이름 : <input type="text" name="name"><br>
            나이 : <input type="text" name="age"><br>
            <input type="submit" value="확인">
        </form>

        <h2>choose(else if) 확인</h2>
        <form action="jstl_choose2.jsp">
            점수 : <input type="text" name="point"><br>
            <input type="submit" value="확인">
        </form>
    </body>
</html>