<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>응답</title>
  <link rel="stylesheet" href="/webjars/bootstrap/5.1.3/css/bootstrap.min.css">
  <link rel="stylesheet" href="/resources/css/survey.css">
</head>
<body>
<div class="container survey-container">
  <h2 class="mt-5">응답</h2>
  <div class="survey-content mb-3">
    <p>1 : ${surveyCommand.q1}</p>
    <p>2 : ${surveyCommand.q2}</p>
    <p>3 : ${surveyCommand.q3}</p>
    <p>4 : ${surveyCommand.respondentName}</p>
    <p>5 : ${surveyCommand.respondentAge}</p>
    <a href="<c:url value="/survey/surveyList"/>" class="survey-link">[응답 리스트 보기]</a>
  </div>
</div>

<script src="/webjars/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>
