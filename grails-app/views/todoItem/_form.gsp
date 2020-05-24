<%@ page import="com.example.TodoItem" %>

<g:set var="todoItemInstance" value="${todoItemInstance ?: new TodoItem()}"/>


<div class="form-group row ${hasErrors(bean: todoItemInstance, field: 'task', 'is-invalid')}">
    <label class="col-2 col-form-label text-right required-field" for="task">
		Task
	</label>
    <div class="col-9">
	    <g:textArea class="form-control" name="task" cols="40" rows="5" maxlength="255" value="${todoItemInstance.task}"/>
    </div>
</div>

