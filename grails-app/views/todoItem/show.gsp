
<%@ page import="com.example.TodoItem" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'todoItem.label', default: 'TodoItem')}" />
		<title>${entityName} Details</title>
	</head>
	<body>
    <div class="row">
        <div class="col-sm-12">
            <g:render template="/layouts/fragments/breadcrumbs"
                      model="[breadcrumbs: [[title: 'List', action: 'index'], [title: 'Edit', action: 'edit', id: todoItemInstance.id], [title: 'View', active: true]]]"/>
            <h3>Show</h3>

            <g:render template="/layouts/fragments/domainDetails" model="[instance: todoItemInstance]"/>

		</div>
	</body>
</html>
