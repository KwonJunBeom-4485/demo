<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>request 처리</title>
    </head>
    <body>
        아이디 : ${userInfo.id} <br>
        패스워드 : ${userInfo.pw} <br>
        이름 : ${userInfo.name} <br>
        나이 : ${userInfo.age} <br>
        취미 : ${userInfo.hobby}, ${userInfo.hobby[0]}<br>

    </body>
</html>