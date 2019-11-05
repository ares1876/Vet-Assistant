<%--
  Created by IntelliJ IDEA.
  User: a.tahiraga
  Date: 7/19/2019
  Time: 12:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Vett Application</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/styles/PositionCenter.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/styles/NavBar.css">
</head>
<body>

    <div id="main-content">

        <div class="topnav-container">
            <jsp:include page="navBar.jsp"/>
        </div>

        <h1 class="bllok-qendror">Vet Assistant</h1>

        <h2><i><c:out value="${kafsha.emri}"/></i>'s Profile</h2>

        <div class="zhvendosur" id="info-kafsha">

                <img src="${pageContext.request.contextPath}/resources/uploads/${kafsha.emriFotos}" width="300px" height="200px">

            <table>
                <tr> <td>Pet's name:        </td>      <td>    <c:out value="${kafsha.emri}"                />      </td></tr>
                <tr> <td>Type:              </td>      <td>    <c:out value="${kafsha.lloji.toUpperCase()}" />      </td></tr>
                <tr> <td>Age:               </td>      <td>    <c:out value="${kafsha.mosha}"               />      </td></tr>
                <tr>
                    <c:set var="pronariText" value="${kafsha.emriPronarit}-${kafsha.mbiemriPronarit}" scope="request"/>
                    <td>Pet's owner:        </td>      <td>    <a href="/VettApplication_war_exploded/pronaret/shfaq_pronarin/${kafsha.emriPronarit}-${kafsha.mbiemriPronarit}"><c:out value="${kafsha.emriPronarit} ${kafsha.mbiemriPronarit}"/></a>  </td>
                </tr>

            </table>

        </div>


    </div>
</body>
</html>


