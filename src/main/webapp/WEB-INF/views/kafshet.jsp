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
                <a href="/VettApplication_war_exploded/pronaret">Owners</a>
                <a class="active" href="/VettApplication_war_exploded/kafshet">Pets</a>
                <a href="/VettApplication_war_exploded/info">Info</a>
            </div>
        </div>


        <h1 class="bllok-qendror">Vet Assistant</h1>

        <div id="kerko_kafshen" class="zhvendosur">

            <h4>Search Pet</h4>
            <form action="/VettApplication_war_exploded/kafshet/shfaq_kafshen" method="post">
                <table>
                    <tr><td>Pets's name:                 </td>  <td>     <input type="text" name="emri">                 </td>   </tr>
                    <tr><td>Owner's name :                </td>  <td>     <input type="text" name="emriPronarit">         </td>   </tr>
                    <tr><td>Owner's lastaname:             </td>  <td>     <input type="text" name="mbiemriPronarit">      </td>   </tr>
                    <tr><td>Pet's Type:                     </td>  <td>     <select name="lloji">
                                                                                <option value="qen">Dog</option>
                                                                                <option value="mace">Cat</option>
                                                                                <option value="mi">Mouse</option>
                                                                                <option value="peshk">Fish</option>
                                                                                <option value="breshke">Turtle</option>
                                                                            </select></td></tr>
                </table>

                <c:if test="${error!=null}">
                    <p class="errors">${error}</p>
                </c:if>

                <input type="submit" value="Search"> <br/>
            </form>
        </div>

        <br/> <br/>
        <input id="butoni" type="button" name="answer" value="Add New Pet" onclick="showDivKafshet()" />


        <div id="shto_kafshe" class="zhvendosur fshih">
            <h3>Add New Pet</h3>

            <form action="/VettApplication_war_exploded/kafshet/shto_kafshe" method="post" enctype="multipart/form-data">

                <table>
                    <tr><td>Pet's name:         </td>  <td><input type="text" name="emri">                  </td></tr>
                    <tr><td>Owner's name:        </td>  <td><input type="text" name="emriPronarit">          </td></tr>
                    <tr><td>Owner's lastname:     </td>  <td><input type="text" name="mbiemriPronarit">       </td></tr>
                    <tr><td>Pet's Type:        </td>  <td><select name="lloji">
                                                                <option value="qen">        Dog         </option>
                                                                <option value="mace">       Cat         </option>
                                                                <option value="mi">         Mouse       </option>
                                                                <option value="peshk">      Fish        </option>
                                                                <option value="breshke">    Turtle      </option>
                                                            </select></td></tr>

                    <tr><td>Age:              </td>  <td><input type="text" name="mosha">                                 </td></tr>
                    <tr><td>Comments:            </td>  <td><textarea name="shenime" rows="10" cols="25"></textarea>         </td></tr>
                    <tr><td>Picture:               </td>  <td><input type="file" name="fotojaKafshes" accept="image/jpeg,image/png, image/gif" >   </td></tr>
                </table>

                <input type="submit" value="Add New">
            </form>
        </div>
    </div>



    <script src="${pageContext.request.contextPath}/resources/javascript/HideForm.js"></script>

</body>
</html>
