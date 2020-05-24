<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <title>Create</title>
</head>
<body>
<div class="row">
    <div class="col-sm-12">
        <g:render template="/layouts/fragments/breadcrumbs"
                  model="[breadcrumbs: [[title: 'List', action: 'index'], [title: 'Create', active: true]]]"/>
        <h3>Create</h3>
        <bs4:validationErrors instance="\${${propertyName}}"/>
        <g:form controller="${domainClass.propertyName}" action="save" <%= multiPart ? ' enctype="multipart/form-data"' : '' %>>
            <fieldset>
                <g:render template="/${domainClass.propertyName}/form"/>
            </fieldset>
            <fieldset class="text-right">
                <button type="submit" name="create" class="btn btn-primary">
                    <i class="fas fa-save mr-2"></i> Create
                </button>
            </fieldset>
        </g:form>
    </div>
</div>
</body>
</html>
