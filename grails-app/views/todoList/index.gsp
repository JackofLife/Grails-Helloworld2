<%@ page import="com.example.TodoList" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <title>List</title>
</head>
<body>
<div class="row">
    <div class="col-sm-12">
        <g:render template="/layouts/fragments/breadcrumbs"
                  model="[breadcrumbs: [[title: 'List', active: true], [title: 'Create', action: 'create']]]"/>
        <h3>List</h3>
        <g:render template="table"/>
        <bs4:paginate total="${todoListInstanceCount}" block="true"/>
    </div>
</div>
</body>
</html>