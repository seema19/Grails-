<%@ page import="jbiling.Product" %>



<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'barCode', 'error')} required">
	<label for="barCode">
		<g:message code="product.barCode.label" default="Bar Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="barCode" required="" value="${productInstance?.barCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="product.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${productInstance?.description}"/>

</div>

