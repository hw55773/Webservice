<%--
  Created by IntelliJ IDEA.
  User: 文化
  Date: 2023/11/16
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>$Title$</title>
</head>
<body>
<h2>欢迎使用个人所得税计算程序</h2>

<form action="taxcalculator" method="post">
  <label for="income">收入:</label>
  <input type="text" id="income" name="income" required>
  <br>
  <input type="submit" value="计算税款">
</form>

<!-- 显示计算结果 -->
<%
  String result = (String)request.getAttribute("result");
  if(result != null) {
%>
<p>个人所得税: <%= result %></p>
<%
  }
%>
</body>
</html>
