<% import grails.persistence.Event %>
<%=packageName%>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="contained">
		<g:set var="entityName" value="\${message(code: '${domainClass.propertyName}.label', default: '${className}')}" />
		<title>\${entityName} Details</title>
	</head>
	<body>
    <div class="row">
        <div class="col-sm-12">
            <g:render template="/layouts/fragments/navbarCrud"
                      model="[breadcrumbs: [[title: 'List', action: 'index'], [title: 'Edit', action: 'edit', id: ${propertyName}.id], [title: 'View', active: true]]]"/>
            <h3>Show</h3>

            <g:render template="/layouts/fragments/domainDetails" model="[instance: ${propertyName}]"/>

		</div>
	</body>
</html>
