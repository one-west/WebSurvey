<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>설문조사</title>
  <link rel="stylesheet" href="/webjars/bootstrap/5.1.3/css/bootstrap.min.css">
  <link rel="stylesheet" href="/resources/css/survey.css">
</head>
<body>

<div class="container survey-container">
  <h2 class="mt-5">설문조사</h2>
  <form:form action="" modelAttribute="surveyCommand" method="post">
    <form:errors/>

    <div class="mb-3">
      <label class="form-label">1. 당신의 희망 분야는?</label> <br>
      <div class="form-check form-check-inline">
        <form:radiobutton value="서버" path="q1" id="sever" class="form-check-input"/>
        <label class="form-check-label" for="sever">서버개발자</label>
      </div>
      <div class="form-check form-check-inline">
        <form:radiobutton value="프론트" path="q1" id="front" class="form-check-input"/>
        <label class="form-check-label" for="front">프론트개발자</label>
      </div>
      <div class="form-check form-check-inline">
        <form:radiobutton value="풀스택" path="q1" id="full" class="form-check-input"/>
        <label class="form-check-label" for="full">풀스택개발자</label>
      </div>
      <div class="error-message">
        <form:errors path="q1"/>
      </div>
    </div>

    <div class="mb-3">
      <label class="form-label">2. 가장 많이 사용하는 개발도구는?</label> <br>
      <div class="form-check form-check-inline">
        <form:radiobutton value="Eclipse" path="q2" id="eclipse" class="form-check-input"/>
        <label class="form-check-label" for="eclipse">Eclipse</label>
      </div>
      <div class="form-check form-check-inline">
        <form:radiobutton value="IntelliJ" path="q2" id="intellij" class="form-check-input"/>
        <label class="form-check-label" for="intellij">IntelliJ</label>
      </div>
      <div class="form-check form-check-inline">
        <form:radiobutton value="VSCode" path="q2" id="vscode" class="form-check-input"/>
        <label class="form-check-label" for="vscode">VSCode</label>
      </div>
      <div class="error-message">
        <form:errors path="q2"/>
      </div>
    </div>

    <div class="mb-3">
      <label class="form-label">3. 하고 싶은 말</label> <br>
      <div class="form-check form-check-inline">
        <form:input path="q3" class="form-control"/><br>
      </div>
      <div class="error-message">
        <form:errors path="q3"/>
      </div>
    </div>

    <div class="mb-3">
      <label class="form-label">4. 응답자 이름</label> <br>
      <div class="form-check form-check-inline">
        <form:input path="respondentName" class="form-control"/><br>
      </div>
      <div class="error-message">
        <form:errors path="respondentName"/>
      </div>
    </div>

    <div class="mb-3">
      <label class="form-label">5. 응답자 나이</label> <br>
      <div class="form-check form-check-inline">
        <form:input path="respondentAge" class="form-control"/><br>
      </div>
      <div class="error-message">
        <form:errors path="respondentAge"/>
      </div>
    </div>

    <input type="submit" value="전송" class="btn btn-primary submit-btn"/>
  </form:form>
</div>

<script src="/webjars/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>
