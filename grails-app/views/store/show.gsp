
<%@ page import="jbiling.Store" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'store.label', default: 'Store')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-store" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-store" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list store">
			
				<g:if test="${storeInstance?.departmentalStore}">
				<li class="fieldcontain">
					<span id="departmentalStore-label" class="property-label"><g:message code="store.departmentalStore.label" default="Departmental Store" /></span>
					
						<span class="property-value" aria-labelledby="departmentalStore-label"><g:fieldValue bean="${storeInstance}" field="departmentalStore"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${storeInstance?.notes}">
				<li class="fieldcontain">
					<span id="notes-label" class="property-label"><g:message code="store.notes.label" default="Notes" /></span>
					
						<span class="property-value" aria-labelledby="notes-label"><g:fieldValue bean="${storeInstance}" field="notes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${storeInstance?.price}">
				<li class="fieldcontain">
					<span id="price-label" class="property-label"><g:message code="store.price.label" default="Price" /></span>
					
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${storeInstance}" field="price"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${storeInstance?.product}">
				<li class="fieldcontain">
					<span id="product-label" class="property-label"><g:message code="store.product.label" default="Product" /></span>
					
						<span class="property-value" aria-labelledby="product-label"><g:link controller="product" action="show" id="${storeInstance?.product?.id}">${storeInstance?.product?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:storeInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${storeInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
