<%--
  Created by IntelliJ IDEA.
  User: richard
  Date: 2026. 9. 9.
  Time: 오후 3:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Simple Web</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<h1>Simple Web Project</h1>
<p>JSP 화면 테스트 입니다.</p>
<button type="button" id="testBtn" class="btn btn-primary">jQuery 테스트</button>
<a href="/test/list">TEST_T 조회</a>
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>

<script>
    $(function () {
        $("#testBtn").on("click", function () {
            alert("jQuery 정상 동작!");
        });
    });
</script>

</body>
</html>
