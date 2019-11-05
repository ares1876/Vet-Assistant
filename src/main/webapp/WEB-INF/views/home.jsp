<%--
  Created by IntelliJ IDEA.
  User: a.tahiraga
  Date: 7/19/2019
  Time: 10:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>
<html>
<head>
    <title>Vett Application HomePage</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/styles/PositionCenter.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/styles/NavBar.css">
</head>
<body>
     <div id="main-content">

         <div class="topnav-container">
             <div class="topnav">
                 <a class="active" href="/VettApplication_war_exploded">Home</a>
                 <a href="/VettApplication_war_exploded/pronaret">Owners</a>
                 <a href="/VettApplication_war_exploded/kafshet">Pets</a>
                 <a href="/VettApplication_war_exploded/info">Info</a>
             </div>
         </div>


         <h1 class="bllok-qendror" style="display: block !important;">Vet's Assistant</h1>
         <table class="bllok-qendror">
             <tr>
                 <td><a href="">         <img src="${pageContext.request.contextPath}/resources/images/vet.png" width="250" height="250">        </a> </td>
                 <td><a href="kafshet">  <img src="${pageContext.request.contextPath}/resources/images/kafshet.png" width="250" height="260">    </a> </td>
                 <td><a href="pronaret"> <img src="${pageContext.request.contextPath}/resources/images/pronari.png" width="250" height="290">    </a> </td>
             </tr>
             <tr>
                 <td align="center"> <h3><a href="">         VETS   </a></h3>      </td>
                 <td align="center"> <h3><a href="kafshet">  PETS   </a></h3>      </td>
                 <td align="center"> <h3><a href="pronaret"> OWNERS </a></h3>      </td>
             </tr>
         </table>

         <table class="bllok-qendror">
             <tr>
                 <td><a href="info">    <img src="${pageContext.request.contextPath}/resources/images/statistika.jpg" width="250" height="250">    </a> </td>
                 <td><a href="">        <img src="${pageContext.request.contextPath}/resources/images/inventar.jpg" width="250" height="220">    </a> </td>
             </tr>
             <tr>
                 <td align="center"> <h3><a href="">    INFO        </a></h3>      </td>
                 <td align="center"> <h3><a href="">  WAREHOUSE     </a></h3>      </td>
             </tr>
         </table>
    </div>
</body>
</html>
