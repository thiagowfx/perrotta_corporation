<%@page import="com.thiagoperrotta.model.Money"%>
<%@page import="com.thiagoperrotta.model.Product"%>
<%@page import="com.thiagoperrotta.model.PerrottaInfo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Product PRODUCT = (Product) request.getSession().getAttribute("PRODUCT");
    
    if(PRODUCT == null) {
        throw new Exception("PRODUCT is null while trying to access page2.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1" />
        <title><%= PerrottaInfo.getCorporationName()%> - Detalhes do Produto</title>
        <link rel="stylesheet" type="text/css" media="all" href="css/unsemantic/reset.css" />
        <link rel="stylesheet" type="text/css" media="all" href="css/unsemantic/text.css" />
        <link rel="stylesheet" type="text/css" media="all" href="css/unsemantic/unsemantic-grid-responsive-no-ie7.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
    </head>
    <body>
        <h1 class="title">Detalhes do Produto</h1>
        <br />
        <br />
        <div class="grid-container" style="text-align: center;">
            <form method="POST" action="controller">
                <input type="hidden" name="pagehandlerName" value="com.thiagoperrotta.pagehandler.Pagehandler_page2_jsp" />
                <div class="grid-50">
                    <img src="<%= PRODUCT.getImage()%>" />
                </div>
                <div class="grid-40 prefix-10">
                    <h2 class="subtitle"><%= PRODUCT.getName()%></h2>
                    <br />
                    <p class="description"><%= PRODUCT.getDescription()%></p>
                    <p class="price">Preço unitário: <%= PRODUCT.getPrice() %></p>
                    QUANTIDADE: <input type="number" style="width: 60px;" name="QUANTITY" value="1" />
                    <br />
                    <br />
                    <input type="submit" class="cancel" name="SUBMIT_BUTTON2" value="VOLTAR"/>
                    <input type="submit" class="confirm" name="SUBMIT_BUTTON2" value="COMPRAR"/>
                </div>
            </form>
        </div>
    </body>
</html>
