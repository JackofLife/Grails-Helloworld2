

<table class="table table-bordered table-striped table-hover table-sm">
    <thead>
    <tr>
        
        <bs4:sortableColumn property="task" title="Task" />
        
    </tr>
    </thead>
    <tbody>
    <g:each in="${todoItemInstanceList}" status="i" var="todoItemInstance">
        <tr>
            
            <td><g:link action="edit" id="${todoItemInstance.id}">${fieldValue(bean: todoItemInstance, field: "task")}</g:link></td>
            
        </tr>
    </g:each>
    </tbody>
</table>