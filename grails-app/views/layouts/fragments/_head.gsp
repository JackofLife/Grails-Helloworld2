<%@ page import="grails.util.Environment" %>
<title>
    <g:if test="${Environment.current != Environment.PRODUCTION}">${Environment.current}</g:if>
    <g:layoutTitle default="Texan Title"/>
</title>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="msapplication-config" content="none"/>

<g:render template="/layouts/fragments/bootstrap"/>
<asset:stylesheet src="application.css"/>
<g:layoutHead/>