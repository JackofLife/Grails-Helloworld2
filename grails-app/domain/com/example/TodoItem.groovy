package com.example

class TodoItem {

	String task

    static constraints = {
    	task nullable: false, maxSize: 255
    }

}
