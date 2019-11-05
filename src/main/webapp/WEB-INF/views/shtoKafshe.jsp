<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/styles/HiddenForms.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/styles/Errors.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/styles/NavBar.css">

</head>
<body>

    <div id="main-content">

        <div class="topnav-container">
            <jsp:include page="navBar.jsp"/>
        </div>


        <h1 class="bllok-qendror">Vet's Assistant</h1>

        <h3>Add New Pet</h3>

        <div class="zhvendosur">
            <form method="post" enctype="multipart/form-data">

                <table>
                    <tr><td>Pet's name:         </td>  <td><input type="text" name="emri">                  </td></tr>
                    <tr><td>Owner's name:        </td>  <td><input type="text" name="emriPronarit">          </td></tr>
                    <tr><td>Owner's lastname:     </td>  <td><input type="text" name="mbiemriPronarit">       </td></tr>
                    <tr><td>Pet's type:        </td>  <td><select name="lloji">
                                                                    <option value="qen">        Dog         </option>
                                                                    <option value="mace">       Cat         </option>
                                                                    <option value="mi">         Mouse       </option>
                                                                    <option value="peshk">      Fish        </option>
                                                                    <option value="breshke">    Turtle      </option>
                                                                </select></td></tr>

                    <tr><td>Age:              </td>  <td><input type="text" name="mosha" />                                                   </td></tr>
                    <tr><td>Comments:            </td>  <td><textarea name="shenime" rows="10" cols="25"></textarea>                             </td></tr>
                    <tr><td>Image:               </td>  <td><input type="file" name="fotojaKafshes" accept="image/jpeg,image/png, image/gif" style="padding-bottom: 10px;" >   </td></tr>
                </table>

                <input type="submit" value="Save">
            </form>
        </div>

        <c:if test="${error!=null}">
                <p class="errors">${error}</p>

            <input type="button" id="butoni" value="Save New Owner" onclick="showDivPronaret()"/>
            <div id="shto_pronar" class="zhvendosur fshih">
                <form action="/VettApplication_war_exploded/pronaret/shto_pronar" method="post">

                    <table>
                        <tr><td>Name:       </td>  <td><input type="text" name="emri">      </td></tr>
                        <tr><td>Lastname:    </td>  <td><input type="text" name="mbiemri">   </td></tr>
                        <tr><td>Mobile No.:    </td>  <td><input type="text" name="nrTel">     </td></tr>
                        <tr><td>E-mail:     </td>  <td><input type="text" name="email">     </td></tr>
                    </table>

                    <input type="submit" value="Save">
                </form>
            </div>
        </c:if>
    </div>

    <script src="${pageContext.request.contextPath}/resources/javascript/HideForm.js"></script>

</body>
</html>
