<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Inventory - Visão</title>
        <%@include file="header.jsp" %>
    </head>
    <body class="nav-md">
        <div class="container body">
            <div class="main_container">

                <%@include file="sidemenu.jsp" %>
                <%@include file="topmenu.jsp" %>    
                <%@include file="/view/view_visao.jsp" %>
                <%@include file="footer.jsp" %>

            </div>
        </div>  

        <%@include file="script.jsp" %>
    </body>
</html>
