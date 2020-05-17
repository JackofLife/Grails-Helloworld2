<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="contained"/>
    <title>Texan Title Webservice</title>
</head>
<body>
    <g:render template="/layouts/fragments/navbarCrud" model="[
        breadcrumbs: [
            [title: 'Control Panel', action: 'cpanel', icon: 'fa fa-fw fa-cogs'],
            [title: 'App Details', active: true, icon: 'fa fa-fw fa-list']
        ]
    ]"/>

    <div class="row">
        <div class="col-6">
            <h3>Available Controllers:</h3>
            <div class="list-group">
                <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                    <g:link class="list-group-item py-2" controller="${c.logicalPropertyName}">${c.fullName}</g:link>
                </g:each>
            </div>
        </div>
        <div class="col-6">
            <h3>Application Properties</h3>
            <ul>
                <li>App version: <g:meta name="app.version"/></li>
                <li>Environment: ${grails.util.Environment.current.toString()}</li>
                <li>Grails version: <g:meta name="app.grails.version"/></li>
                <li>Groovy version: ${GroovySystem.getVersion()}</li>
                <li>JVM version: ${System.getProperty('java.version')}</li>
                <li>Reloading active: ${grails.util.Environment.reloadingAgentEnabled}</li>
                <li>Server URL: ${grailsApplication.config.grails.serverURL}</li>
            </ul>
            <h3>Application Statistics</h3>
            <ul>
                <li>Controllers: ${grailsApplication.controllerClasses.size()}</li>
                <li>Domains: ${grailsApplication.domainClasses.size()}</li>
                <li>Services: ${grailsApplication.serviceClasses.size()}</li>
                <li>Tag Libraries: ${grailsApplication.tagLibClasses.size()}</li>
            </ul>
            <h3>Installed Plugins</h3>
            <ul>
                <g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
                    <li>${plugin.name} - ${plugin.version}</li>
                </g:each>
            </ul>
        </div>
    </div>
</body>
</html>
