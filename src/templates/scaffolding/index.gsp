<%=packageName%>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="contained">
    <title>List</title>
</head>
<body>
<div class="row">
    <div class="col-sm-12">
        <g:render template="/layouts/fragments/navbarCrud"
                  model="[breadcrumbs: [[title: 'List', active: true], [title: 'Create', action: 'create']]]"/>
        <h3>List</h3>
        <g:render template="table"/>
        <bs4:paginate total="\${${propertyName}Count}" block="${true}"/>
    </div>
</div>
</body>
</html>