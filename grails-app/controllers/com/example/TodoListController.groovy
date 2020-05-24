package com.example

import grails.transaction.Transactional

@Transactional(readOnly = true)

class TodoListController {
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 25, 500)
        List todoListInstanceList = TodoList.list(params)
        render(view:'index', model:[todoListInstanceList: todoListInstanceList, todoListInstanceCount: TodoList.count()])
    }

    def create() {
        render(view: 'create', model:[todoListInstance: flash.instance ?: new TodoList(params)])
    }


    def edit(Long id) {
        render(view:'edit', model: [todoListInstance: flash.instance ?: TodoList.get(id)])
    }

    @Transactional
    def save() {
        TodoList todoListInstance = new TodoList(params)
        if (todoListInstance.hasErrors()) {
            flash.instance = todoListInstance
            redirect(action: 'create')
            return
        }
        todoListInstance.save()
        flash.message = "Save successful"
        redirect(action:'index')
    }

    @Transactional
    def update(Long id) {
        TodoList todoListInstance = TodoList.get(id)
        todoListInstance.properties = params
        if (!todoListInstance.validate()) {
            flash.instance = todoListInstance
            redirect(action: 'edit')
            return
        }
        todoListInstance.save()
        flash.message = "Update successful"
        redirect(action: 'index')
    }
}