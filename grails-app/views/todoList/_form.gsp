<%@ page import="com.example.TodoList; com.example.TodoItem" %>

<g:set var="todoListInstance" value="${todoListInstance ?: new TodoList()}"/>


<div class="form-group row ${hasErrors(bean: todoListInstance, field: 'name', 'is-invalid')}">
    <label class="col-2 col-form-label text-right required-field" for="name">
		Name
	</label>
    <div class="col-9">
	    <g:textField class="form-control" name="name" maxlength="100" value="${todoListInstance.name}"/>
    </div>
</div>

<div class="form-group row ${hasErrors(bean: todoListInstance, field: 'items', 'is-invalid')}">
    <label class="col-2 col-form-label text-right " for="items">
		Items
	</label>
    <div class="col-9">
	    <g:select name="items" from="${TodoItem.list()}" multiple="multiple" optionKey="id" size="5" value="${todoListInstance.items*.id}" class="form-control"/>
    </div>
</div>

