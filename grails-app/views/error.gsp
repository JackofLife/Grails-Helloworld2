<!DOCTYPE html>
<html>
<head>
    <title><g:if env="development">Runtime Exception</g:if><g:else>Error</g:else></title>
    <meta name="layout" content="fullwidth">
    <asset:stylesheet src="errors.css"/>
</head>
<body>
    <div class='card border-danger'>
        <g:renderException exception="${exception}" />
    </div>
</body>
</html>
