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
<div>
    <a href="${pageContext.request.contextPath}/test/write">추가</a>
    <a href="${pageContext.request.contextPath}/">메인으로</a>
</div>
<table border="1">
    <thead>
    <tr>
        <th>TEST_ID</th>
        <th>TEST_NAME</th>
        <th>TEST_DESC</th>
        <th>USE_YN</th>
        <th>REG_DT</th>
        <th>수정</th>
        <th>삭제</th>
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
            <td>
                <a href="${pageContext.request.contextPath}/test/update?testId=${test.testId}">수정</a>
            </td>
            <td>
                <form action="${pageContext.request.contextPath}/test/delete" method="post"
                      onsubmit="return confirm('삭제하시겠습니까?');">
                    <input type="hidden" name="testId" value="${test.testId}">
                    <button type="submit">삭제</button>
                </form>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
