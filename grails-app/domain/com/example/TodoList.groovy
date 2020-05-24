package com.example

class TodoList {

	String name
	Date dateCreated = new Date()

    static constraints = {name nullable: false, maxSize:100
    }
    static hasMany= [items:TodoItem]

}
