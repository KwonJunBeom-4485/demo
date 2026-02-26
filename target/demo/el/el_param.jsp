<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>EL을 이용한 파라미터 처리(생성)</title>
    </head>
    <body>
        <form action="el_param_ok.jsp" method="post">
            이름 : <input type="text" name="name"><br>
            아이디 : <input type="text" name="id"><br>
            비밀번호 : <input type="password" name="pw"><br>
            취미 선택 : <input type="checkbox" name="hobby" value="검도">검도
            <input type="checkbox" name="hobby" value="역도">역도
            <input type="checkbox" name="hobby" value="달리기">달리기
            <input type="checkbox" name="hobby" value="태권도">태권도<br>
            나이 : <input type="text" name="age">
            <input type="submit" value="확인">
        </form>
    </body>
</html>