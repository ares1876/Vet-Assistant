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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/styles/HiddenForms.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/styles/NavBar.css">
</head>
<body>

    <div id="main-content">

        <div class="topnav-container">
            <jsp:include page="navBar.jsp"/>
        </div>


        <h1 class="bllok-qendror">Vet Assistant</h1>

        <h2><i><c:out value="${pronari.emri}"/></i>'s Profile</h2>

        <div id="teDhenat" class="zhvendosur">
            <table>
                <tr> <td>Name:                  </td>      <td>     <c:out value="${pronari.emri}"/>        </td></tr>
                <tr> <td>Lastname:              </td>      <td>     <c:out value="${pronari.mbiemri}"/>     </td></tr>
                <tr> <td>Mobile No.:            </td>      <td>     <c:out value="${pronari.nrTel}"/>       </td></tr>
                <tr> <td>E-mail:                </td>      <td>     <c:out value="${pronari.email}"/>       </td></tr>
            </table>

            <h3><c:out value="${pronari.emri}"/> has <c:out value="${pronari.kafshet.size()}"/> pets in total</h3>

        </div>


        <div class="bllok-qendror">
                <table id="listaKafsheve" class="bllok-qendror">
                      <c:forEach items="${pronari.kafshet}" var="kafsha" varStatus="loop">
                          <c:choose>
                              <c:when test="${loop.count % 3 == 1}">

                                      <tr>
                                      </tr>
                                      <td>
                                          <h4 align="left">Pet nr. ${loop.count}</h4>
                                              <img src="${pageContext.request.contextPath}/resources/uploads/${kafsha.emriFotos}" style="width: 300px; height: 200px;">
                                          <table>
                                              <tr> <td>Pet's name:    </td>      <td>        <a href="../../kafshet/shfaq_kafshen/${kafsha.lloji}/${kafsha.emri}/${kafsha.emriPronarit}/${kafsha.mbiemriPronarit}">
                                                  <c:out value="${kafsha.emri.toUpperCase()}"/> </a>     </td></tr>
                                              <tr> <td>Type:             </td>      <td>        <c:out value="${kafsha.lloji}"/>     </td></tr>
                                          </table>
                                      </td>
                              </c:when>
                              <c:otherwise>
                                  <td>
                                      <h4 align="left">Pet nr. ${loop.count}</h4>
                                          <img src="${pageContext.request.contextPath}/resources/uploads/${kafsha.emriFotos}" style="width: 300px; height: 200px;">
                                      <table>
                                          <tr> <td>Pet's name:    </td>      <td>        <a href="../../kafshet/shfaq_kafshen/${kafsha.lloji}/${kafsha.emri}/${kafsha.emriPronarit}/${kafsha.mbiemriPronarit}">
                                              <c:out value="${kafsha.emri.toUpperCase()}"/> </a>     </td></tr>
                                          <tr> <td>Type:             </td>      <td>        <c:out value="${kafsha.lloji}"/>     </td></tr>
                                      </table>
                                  </td>
                              </c:otherwise>
                          </c:choose>
                    </c:forEach>
                </table>
            </div>

        <br/> <br/>

        <input id="butoniFshij" type="button" value="Delete"   onclick="fshijPronarin()" />
        <input id="butoni" type="button" name="answer" value="Add New Pet" onclick="showDivKafshet()" />
        <input id="butoniHiqKafshen" type="button" name="answer" value="Remove a pet" onclick="hiqKafshen()"/>
        <input id="butoniNdrysho" type="button" name="answer" value="Edit" onclick="ndryshoTeDhenat()" />


        <div id="veprime-me-butonet">
            <div class="zhvendosur fshih answer_list" id="shto_kafshe">
                <form action="/VettApplication_war_exploded/kafshet/shto_kafshe" method="post" enctype="multipart/form-data">

                    <table>
                        <tr><td>Pet's name:         </td>  <td><input type="text" name="emri">                                          </td></tr>
                        <tr><td>Pet's type:        </td>  <td><select name="lloji">
                            <option value="qen">        Dog         </option>
                            <option value="mace">       Cat        </option>
                            <option value="mi">         Mouse          </option>
                            <option value="peshk">      Fish       </option>
                            <option value="breshke">    Turtle     </option>
                        </select></td></tr>

                        <tr><td>Age:              </td>  <td><input type="text" name="mosha">                                 </td></tr>
                        <tr><td>Comments:            </td>  <td><textarea name="shenime" rows="10" cols="25"></textarea>         </td></tr>
                        <input type="hidden" name="emriPronarit" value="${pronari.emri}" >
                        <input type="hidden" name="mbiemriPronarit" value="${pronari.mbiemri}">
                        <tr><td>Image:               </td>  <td><input type="file" name="fotojaKafshes" accept="image/jpeg,image/png, image/gif" style="padding-bottom: 10px;">   </td></tr>
                    </table>

                    <input type="submit" value="Save">
                    <input type="button" value="Cancel" onclick="refreshPage()">
                </form>
            </div>
            <div class="zhvendosur fshih answer_list" id="fshij_pronarin">
                <h2>ARE YOU SURE YOU WANT TO DELETE ${pronari.emri} ${pronari.mbiemri}??</h2>
                <form action="/VettApplication_war_exploded/pronaret/fshirje" method="post">
                    <input type="hidden" name="emriPronarit" value="${pronari.emri}">
                    <input type="hidden" name="mbiemriPronarit" value="${pronari.mbiemri}">
                    <button name="fshij" value="po">
                        Continue
                    </button>
                    <input type="button" id="mosFshij" value="Cancel" onclick="refreshPage()">
                </form>

            </div>
            <div class="zhvendosur fshih answer_list" id="ndrysho_tedhenat">
            <form method="post"action="/VettApplication_war_exploded/pronaret/ndrysho">
                <table>
                    <tr><td>Name:       </td>  <td>     <input type="text" name="emriRi" value="${pronari.emri}">           </td>   </tr>
                    <tr><td>Lastaname:    </td>  <td>     <input type="text" name="mbiemriRi" value="${pronari.mbiemri}">     </td>   </tr>
                    <tr><td>Mobile No.:    </td>  <td>     <input type="text" name="nrTelRi" value="${pronari.nrTel}">         </td>   </tr>
                    <tr><td>E-mail:     </td>  <td>     <input type="text" name="emailRi" value="${pronari.email}">         </td>   </tr>
                    <tr><td>                            <input type="hidden" name="emri" value="${pronari.emri}">           </td>   </tr>
                    <tr><td>                            <input type="hidden" name="mbiemri" value="${pronari.mbiemri}">     </td>   </tr>
                </table>
                <input type="submit" value="Save">
                <input type="button" value="Cancel" onclick="refreshPage()">

            </form>
        </div>
            <div class="zhvendosur fshih answer_list" id="hiq_kafshen">
                <h3>Which pet do you want to delete?></h3>
               <form action="hiqkafshen" method="post">
                   <table>
                       <tr>
                           <input type="hidden" name="emriPronarit" value="${pronari.emri}">
                           <input type="hidden" name="mbiemriPronarit" value="${pronari.mbiemri}">

                           <input type="text" name="emriKafshes"> <br/>
                           <select name="lloji">
                               <option value="qen">Qen</option>
                               <option value="mace">Mace</option>
                               <option value="mi">Mi</option>
                               <option value="peshk">Peshk</option>
                               <option value="breshke">Breshke</option>
                           </select>
                       </tr>
                       <tr>
                           <td><input type="submit" value="Delete"></td>
                           <td><input type="button" value="Cancel" onclick="refreshPage()"></td>
                       </tr>
                   </table>
               </form>
            </div>
        </div>

    </div>

    <script src="${pageContext.request.contextPath}/resources/javascript/HideForm.js"></script>
    <script src="${pageContext.request.contextPath}/resources/javascript/HideAnimals.js"></script>
    <script>
        function refreshPage(){
            window.location.reload();
        }
    </script>

</body>
</html>