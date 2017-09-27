<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
<g:select id="product" name="product.id" from="${jbiling.Product.list()}" optionKey="id" required="" value="${storeInstance?.product?.id}" class="many-to-one"/>
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Form</title>
	</head>
	<body>
        <g:form controller="productViewer" action="save">
            <label>Product bar code: </label>
            <g:select id="product" name="product.id" from="${jbiling.Product.list()}" optionKey="id" required="" value="${storeInstance?.product?.id}" class="many-to-one"/>
            <br/>
            
            <g:actionSubmit value="Save"/> 
        </g:form>
	</body>
</html>
