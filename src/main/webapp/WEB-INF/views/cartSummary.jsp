<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>장바구니 계산기</title>
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
            h2 {
                text-align: center;
            }
        </style>
    </head>
    <body>
        <h2>나의 장바구니(${cartList.size()}개 상품)</h2>
        <c:choose>
            <c:when test="${empty cartList}">
                <b><p>장바구니가 비어있습니다.</p></b>
            </c:when>
            <c:otherwise>
                <table border="1">
                    <tr>
                        <th>NO</th>
                        <th>상품명</th>
                        <th>수량</th>
                        <th>합계</th>
                    </tr>
                    <c:forEach var="cart" items="${cartList}" varStatus="status">
                        <tr>
                            <td>${status.index + 1}</td>
                            <td>${cart.name}</td>
                            <td>${cart.stock}</td>
                            <td><fmt:formatNumber value="${cart.stock * cart.price}" groupingUsed="true" />원</td>
                        </tr>
                    </c:forEach>
                </table>
            </c:otherwise>
        </c:choose>
    </body>
</html>