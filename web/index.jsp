<%--
  Created by IntelliJ IDEA.
  User: 文化
  Date: 2023/11/16
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Income Tax Calculator</title>
  <script>
    function calculateTax() {
      // 获取用户输入的收入
      var income = document.getElementById("income").value;

      // 构建 SOAP 请求
      var soapRequest = '<?xml version="1.0" encoding="utf-8"?>' +
              '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" ' +
              '                  xmlns:web="wsdl">' +
              '   <soapenv:Header/>' +
              '   <soapenv:Body>' +
              '      <web:calculateIncomeTax>' +
              '         <income>' + income + '</income>' +
              '      </web:calculateIncomeTax>' +
              '   </soapenv:Body>' +
              '</soapenv:Envelope>';

      // 发送 AJAX 请求
      var xhr = new XMLHttpRequest();
      xhr.open('POST', 'http://localhost:8081/incometaxcalculator', true);
      xhr.setRequestHeader('Content-Type', 'text/xml');
      xhr.onreadystatechange = function () {
        if (xhr.readyState === 4 && xhr.status === 200) {
          // 解析 SOAP 响应
          var xmlDoc = xhr.responseXML;
          var result = xmlDoc.getElementsByTagName("return")[0].textContent;

          // 显示计算结果
          document.getElementById("result").innerText = "Income Tax: " + result;
        }
      };
      xhr.send(soapRequest);
    }
  </script>
</head>
<body>
<h1>Income Tax Calculator</h1>
<label for="income">Enter Income:</label>
<input type="text" id="income">
<button onclick="calculateTax()">Calculate Tax</button>
<div id="result"></div>
</body>
</html>

