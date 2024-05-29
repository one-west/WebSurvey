<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Survey</title>
  <link rel="stylesheet" href="/webjars/bootstrap/5.1.3/css/bootstrap.min.css">
  <link rel="stylesheet" href="/resources/css/survey.css">
</head>
<body>
<div class="container survey-container">
  <h2 class="text-center mt-5 mb-4">전체 응답 리스트</h2>
  <table class="table table-bordered table-striped">
    <thead class="thead-dark">
    <tr>
      <th>ID</th>
      <th>Q1</th>
      <th>Q2</th>
      <th>Q3</th>
      <th>응답자이름</th>
      <th>응답자나이</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="item" items="${list}">
      <tr>
        <td>${item.id}</td>
        <td>${item.q1}</td>
        <td>${item.q2}</td>
        <td>${item.q3}</td>
        <td>${item.respondentName}</td>
        <td>${item.respondentAge}</td>
      </tr>
    </c:forEach>
    </tbody>
  </table>

  <a href="<c:url value="/survey/surveyForm"/>" class="btn btn-primary survey-link">처음으로</a>
</div>

<script src="/webjars/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>