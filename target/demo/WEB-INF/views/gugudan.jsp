<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%-- 
    JSP 태그 종류
    1. 스크립트릿(scriptlet) : <% %> 모든 자바 코드를 사용할 수 있음
    2. 지시자(directive) : <%@ %> 페이지 속성이나 기타 설정을 사용할 수 있음
        a. language : 사용할 언어를 지정. java만 지정
        b. import : 패키지를 import할 때 사용
        c. errorPage : 설정된 페이지에서 에러 발생 시 지정해둔 에러페이지를 호출
        d. contentType : text/html 이렇게 사용되면 HTML 문서입니다.
        e. pageEncoding : 출력 문자 인코딩
        [include] : jsp에 다른 특정 영역에 속한 문서를 로드할 때 사용.
        ex) <%@ include file="header.jsp" %>
        [taglib] : jsp 페이지에 사용할 태그 라이브러리를 지정함. -jstl 태그 라이브러리가 존재.
        ex) <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    3. 선언자(declaration) : <%! %> 변수나 메서드 선언 시 사용
    4. 표현식(expression) : <%= %> 결과 값을 출력할 때 사용
    5. 주석(comments) : 이 문장들 감싼거
--%>
<!DOCTYPE html> 
<html> 
    <head>
        <title>구구단 결과</title>
    </head> 
    <body>
        <%-- jsp에서 값을 불러오는 방식 --%>
        <% Integer dan = (Integer)request.getAttribute("dan"); %>
        <h2><%= dan %>단 출력 결과</h2> 
    <ul> 
        <% // 스크립트릿을 사용하는 이유. 데이터를 사용한 반복적인 작업을 java 형식으로 구현
            List<String> results = (List<String>) request.getAttribute("results"); 
            for(String res : results) { 
        %> 
        <li><%= res %></li> 
        <% } %> 
    </ul> 
    <a href="index.jsp">처음으로</a> 
    </body> 
</html>