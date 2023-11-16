<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>도서관리 프로그램</title>
</head>
<body>
<div id="container">
    <h3>도서관리 프로그램</h3>
    <form action="/libreg" method="post">
        <input type="submit" value="등록 하기">
        <input type="submit" value="조회 하기">
        <input type="submit" value="수정 하기">
        <input type="submit" value="삭제 하기">
    </form>
</div>
</body>
<style>
    html {
        height: 100%;
    }
    body {
        box-sizing: border-box;
        display: flex;
        align-items: center;
        justify-content: center;
        height: 60%;
    }
    h3 {
        margin-top: 0px;
        padding-top: 0px;
    }
    #container {
        border-style: solid;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        width: 500px;
        height: 250px;
    }
    input[type="number"] {
        width: 50px;
        margin-bottom: 10px;
    }
</style>
</html>