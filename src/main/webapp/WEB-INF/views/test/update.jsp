<%--
  Created by IntelliJ IDEA.
  User: richard
  Date: 2026. 9. 10.
  Time: 오후 5:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>TEST 등록</title>
</head>
<body>

<h1>TEST 등록</h1>
<form action="/test/update" method="post">

    <input type="hidden" name="testId" value="${test.testId}">

    <div>
        <label>이름</label>
        <input type="text" name="testName" value="${test.testName}">
    </div>

    <div>
        <label>설명</label>
        <input type="text" name="testDesc" value="${test.testDesc}">
    </div>

    <div>
        <label>사용여부</label>
        <input type="text" name="useYn" value="${test.useYn}">
    </div>

    <button type="submit">수정</button>

</form>

</body>
</html>
