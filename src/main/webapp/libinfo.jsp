<%--
  Created by IntelliJ IDEA.
  User: kitri
  Date: 2023-11-16
  Time: 오후 3:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>도서 정보 등록하기</title>
</head>
<body>
<form action="/libreg" method="post">
    <table style="margin: 10px auto">
        <thead style="background-color: rgb(128,128,128); color: white;">
        <tr>
            <td colspan="2">도서 정보</td>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td style="background-color: rgb(128,128,128);color: white;">제목</td>
            <td><%=request.getAttribute("name")%></td>
        </tr>
        <tr>
            <td style="background-color: rgb(128,128,128);color: white;">저자</td>
            <td><%=request.getAttribute("author")%></td>
        </tr>
        <tr>
            <td style="background-color: rgb(128,128,128);color: white;">출판일</td>
            <td><%=request.getAttribute("date")%></td>
        </tr>
        </tbody>
    </table>
    <a href="lib.html">도서 등록</a>
</form>

</body>
</html>
