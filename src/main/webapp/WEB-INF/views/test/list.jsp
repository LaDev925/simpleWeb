<%--
  Created by IntelliJ IDEA.
  User: richard
  Date: 2026. 9. 9.
  Time: 오후 6:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1>TEST_T 조회</h1>

<p>조회 건수: ${testList.size()}</p>

<table border="1">
    <thead>
    <tr>
        <th>TEST_ID</th>
        <th>TEST_NAME</th>
        <th>TEST_DESC</th>
        <th>USE_YN</th>
        <th>REG_DT</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach var="test" items="${testList}">
        <tr>
            <td>${test.testId}</td>
            <td>${test.testName}</td>
            <td>${test.testDesc}</td>
            <td>${test.useYn}</td>
            <td>${test.regDt}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
