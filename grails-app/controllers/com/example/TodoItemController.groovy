package com.example

import grails.transaction.Transactional

@Transactional(readOnly = true)
class TodoItemController {
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 25, 500)
        List todoItemInstanceList = TodoItem.list (params)
        render(view:'index', model:[todoItemInstanceList: todoItemInstanceList, todoItemInstanceCount: TodoItem.count()])
    }

    def create() {
        render(view: 'create', model:[todoItemInstance: flash.instance ?: new TodoItem(params)])
    }

    def edit(Long id) {
        render(view:'edit', model: [todoItemInstance: flash.instance ?: TodoItem.get(id)])
    }

    @Transactional 
    def save() {
        TodoItem todoItemInstance = new TodoItem(params)
        if (!todoItemInstance.validate()) {
            flash.instance = todoItemInstance
            redirect(action: 'create')
            return
        }

        todoItemInstance.save()
        flash.message = "Save successful"
        redirect(action:'index')
    }

    @Transactional
    def update() {
        TodoItem todoItemInstance = TodoItem.get(id)
        todoItemInstance.properties = params 
        if (!todoItemInstance.validate()) {
            flash.instance = todoItemInstance
            redirect(action: 'edit')
            return
        }
        todoItemInstance.save()
        flash.message = "Update successful"
        redirect(action: 'index')
    }
}