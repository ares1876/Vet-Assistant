<%--
  Created by IntelliJ IDEA.
  User: a.tahiraga
  Date: 8/30/2019
  Time: 2:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>VetApp</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/styles/PositionCenter.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/styles/NavBar.css">
</head>
<body>

    <div id="main-content">

        <div class="topnav-container">
            <jsp:include page="navBar.jsp"/>
        </div>

        <h1 class="bllok-qendror">Vet Assistant</h1>

        <h3>${emri.toUpperCase()} ${mbiemri.toUpperCase()} was deleted successfuly!</h3>

        <a href="/VettApplication_war_exploded/"><input type="button" value="Go back to main menu"></a>
    </div>

</body>
</html>
