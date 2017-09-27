<%@ page import="jbiling.Store" %>



<div class="fieldcontain ${hasErrors(bean: storeInstance, field: 'departmentalStore', 'error')} required">
	<label for="departmentalStore">
		<g:message code="store.departmentalStore.label" default="Departmental Store" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="departmentalStore" required="" value="${storeInstance?.departmentalStore}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: storeInstance, field: 'notes', 'error')} required">
	<label for="notes">
		<g:message code="store.notes.label" default="Notes" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="notes" required="" value="${storeInstance?.notes}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: storeInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="store.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="price" type="number" value="${storeInstance.price}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: storeInstance, field: 'product', 'error')} required">
	<label for="product">
		<g:message code="store.product.label" default="Product" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="product" name="product.id" from="${jbiling.Product.list()}" optionKey="id" required="" value="${storeInstance?.product?.id}" class="many-to-one"/>

</div>

