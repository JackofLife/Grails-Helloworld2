

<table class="table table-bordered table-striped table-hover table-sm">
    <thead>
    <tr>
        
        <bs4:sortableColumn property="name" title="Name" />
        
        <bs4:sortableColumn property="dateCreated" title="Date Created" />
        
    </tr>
    </thead>
    <tbody>
    <g:each in="${todoListInstanceList}" status="i" var="todoListInstance">
        <tr>
            
            <td><g:link action="edit" id="${todoListInstance.id}">${fieldValue(bean: todoListInstance, field: "name")}</g:link></td>
            
            <td><g:formatDate date="${todoListInstance.dateCreated}" /></td>
            
        </tr>
    </g:each>
    </tbody>
</table>