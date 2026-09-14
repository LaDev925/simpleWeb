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
<form action="${pageContext.request.contextPath}/test/write" method="post">

    <div>
        <label>이름</label>
        <input type="text" name="testName">
    </div>

    <div>
        <label>설명</label>
        <input type="text" name="testDesc">
    </div>

    <div>
        <label>사용여부</label>
        <input type="text" name="useYn">
    </div>

    <button type="submit">등록</button>

</form>

</body>
</html>
