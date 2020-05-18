<%@ page import="grails.util.Environment" %>
<!DOCTYPE html>
<html>
<head>
    <asset:javascript src="angular.js"/>
    <g:render template="/layouts/fragments/head"/>
</head>
<dev:body>
    <g:render template="/layouts/fragments/navbar"/>
    <bs4:flashMessage message="${flash.message ?: flashMessage}" status="${flash.status}" type="${flash.type}" title="${flash.title}"/>
    <div class="container mt-2">
        <g:layoutBody/>
    </div>
    <g:render template="/layouts/fragments/footer"/>
</dev:body>
</html>