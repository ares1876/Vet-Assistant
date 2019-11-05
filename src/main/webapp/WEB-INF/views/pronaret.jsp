<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: a.tahiraga
  Date: 7/19/2019
  Time: 10:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>
<html>
<head>
    <title>Vett Application</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/styles/PositionCenter.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/styles/HiddenForms.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/styles/Errors.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/styles/NavBar.css">
</head>
<body>

    <div id="main-content">

        <div class="topnav-container">
            <div class="topnav">
                <a href="/VettApplication_war_exploded">Home</a>
                <a class="active" href="/VettApplication_war_exploded/pronaret">Owners</a>
                <a href="/VettApplication_war_exploded/kafshet">Pets</a>
                <a href="/VettApplication_war_exploded/info">Info</a>
            </div>
        </div>

        <h1 class="bllok-qendror">Vet Assistant</h1>

        <div id="kerko_pronarin" class="zhvendosur">

            <h4>Search Owner</h4>
            <form action="/VettApplication_war_exploded/pronaret/shfaq_pronarin" method="post">

                <table>
                    <tr>    <td>Name:      </td>   <td><input type="text" name="emri">      </td>   </tr>
                    <tr>    <td>Lastname:   </td>   <td><input type="text" name="mbiemri">   </td>   </tr>
                </table>

                <c:if test="${error!=null}">
                    <p class="errors">
                        <c:out value="${error}"/>
                    </p>
                </c:if>

                <input type="submit" value="Search">
            </form>
        </div>

        <br/><br/>
        <input type="button" id="butoni" value="Add New Owner" onclick="showDivPronaret()"/>
        <div id="shto_pronar" class="zhvendosur fshih">
            <h3>Add New Owner</h3>
            <form method="post" action="/VettApplication_war_exploded/pronaret/shto_pronar">
                <table>
                    <tr><td>Name:           </td>  <td>     <input type="text" name="emri">         </td>   </tr>
                    <tr><td>Lastname:       </td>  <td>     <input type="text" name="mbiemri">      </td>   </tr>
                    <tr><td>Moblie No.:     </td>  <td>     <input type="text" name="nrTel">        </td>   </tr>
                    <tr><td>E-mail:         </td>  <td>     <input type="text" name="email">        </td>   </tr>
                </table>
                <input type="submit" value="Add New">
            </form>
        </div>
    </div>

    <script src="${pageContext.request.contextPath}/resources/javascript/HideForm.js"></script>

</body>
</html>
