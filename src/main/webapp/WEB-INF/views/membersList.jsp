<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>회원 정보 출력</title>
        <style>
            body {
                font-family: Arial, sans-serif;
            }
            
            table {
                border-collapse: collapse;
                width: 700px;
                margin: 30px auto;
                box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            }
            
            th {
                background-color: #2c3e50;
                color: white;
                padding: 12px;
                text-align: center;
            }
            
            td {
                padding: 10px;
                text-align: center;
            }
            
            th, td {
                border: 1px solid #ddd;
            }
            
            tr:nth-child(even) {
                background-color: #f9f9f9;
            }
            
            tr:hover {
                background-color: #f1f1f1;
                transition: 0.2s;
            }
        </style>
    </head>
    <body>
        <table border="1" style="">
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>EMAIL</th>
                <th>ACTIVE</th>
            </tr>
            <c:forEach var="member" items="${members}">
                <tr>
                    <td>${member.id}</td>
                    <td>${member.name}</td>
                    <td>${member.email}</td>
                    <td>${member.active}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>