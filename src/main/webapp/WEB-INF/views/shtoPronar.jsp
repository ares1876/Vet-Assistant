<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: a.tahiraga
  Date: 7/19/2019
  Time: 11:50 AM
  To change this template use File | Settings | File Templates.
--%>
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

    <h1 class="bllok-qendror">Vet's Assistant</h1>

    <h3>Add New Owner</h3>

    <div  class="zhvendosur">

        <form method="post">
            <form:errors path="pronari.*"/>
            <table>
                <tr><td>Name:       </td>  <td>     <input type="text" name="emri">         </td>   </tr>
                <form:errors path="pronari.emri"/>
                <tr><td>Lastname:    </td>  <td>     <input type="text" name="mbiemri">      </td>   </tr>
                <form:errors path="pronari.mbiemri"/>
                <tr><td>Mobile No.:    </td>  <td>     <input type="text" name="nrTel">        </td>   </tr>
                <form:errors path="pronari.nrTel"/>
                <tr><td>E-mail:     </td>  <td>     <input type="text" name="email">        </td>   </tr>
            </table>
            <input type="submit" value="Save">
        </form>

    </div>
</div>
</body>
</html>
