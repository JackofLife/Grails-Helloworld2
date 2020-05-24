<%@ page import="com.example.TodoItem" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <title>Edit</title>
</head>
<body>
<div class="row">
    <div class="col-sm-12">
        <g:render template="/layouts/fragments/breadcrumbs"
                  model="[breadcrumbs: [[title: 'List', action: 'index'], [title: 'Edit', active: true], [title: 'Create', action: 'create']]]"/>
        <h3>Edit</h3>
        <bs4:validationErrors instance="${todoItemInstance}"/>
        <g:form action="update" method="PUT" >
            <g:hiddenField name="id" value="${todoItemInstance?.id}"/>
            <g:hiddenField name="version" value="${todoItemInstance?.version}"/>
            <fieldset>
                <g:render template="form"/>
            </fieldset>
            <fieldset class="text-right">
                <button type="submit" name="create" class="btn btn-primary">
                    <i class="fas fa-check mr-2"></i> Save Changes
                </button>
            </fieldset>
        </g:form>
    </div>
</div>
</body>
</html>