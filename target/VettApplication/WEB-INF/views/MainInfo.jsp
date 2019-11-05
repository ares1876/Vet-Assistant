<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: a.tahiraga
  Date: 8/6/2019
  Time: 12:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>General Information</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/styles/PositionCenter.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/styles/NavBar.css"></head>
<body>

    <div id="main-content">

        <div class="topnav-container">
            <div class="topnav">
                <a href="/VettApplication_war_exploded">Home</a>
                <a href="/VettApplication_war_exploded/pronaret">Owners</a>
                <a href="/VettApplication_war_exploded/kafshet">Pets</a>
                <a class="active" href="/VettApplication_war_exploded/info">Info</a>
            </div>
        </div>

        <h1 class="bllok-qendror">Vet Assistant</h1><br>

        <h2 class="bllok-qendror">General Information</h2><br>
        <h3 class="bllok-qendror">HOTEL</h3><br>

        <div id="kafshet" class="bllok-qendror">
            <table class="bllok-qendror">
                <tr style="background-color: #dddddd ">
                    <td>Cats</td>
                    <td>Dogs</td>
                    <td>Mice</td>
                    <td>Fishs</td>
                    <td>Turtles</td>
                </tr>
                <tr style="background-color: aliceblue">
                    <td>${macet.size()}</td>
                    <td>${qent.size()}</td>
                    <td>${minjte.size()}</td>
                    <td>${breshkat.size()}</td>
                    <td>${peshqit.size()}</td>
                </tr>
            </table>
        </div>

        <br>

        <div id="pronaret" class="bllok-qendror">
            <h3>List of Owners</h3>
            <table class="bllok-qendror">
                <c:forEach items="${pronaret}" var="pronari" varStatus="loop">
                    <tr>

                        <td>${loop.count}. </td>
                        <td><a href="/VettApplication_war_exploded/pronaret/shfaq_pronarin/${pronari.emri}-${pronari.mbiemri}">${pronari.emri}      </a> </td>
                        <td><a href="/VettApplication_war_exploded/pronaret/shfaq_pronarin/${pronari.emri}-${pronari.mbiemri}">${pronari.mbiemri}   </a> </td>

                    </tr>
                </c:forEach>
            </table>

        </div>
    </div>

</body>
</html>
