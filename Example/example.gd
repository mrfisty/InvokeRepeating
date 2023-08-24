extends Node

func create_greeting(person):
	return "Hello " + person + "!"


func _ready():
	
	Utility.invoke_repeating(self, func(): print(create_greeting("Godot")), 3.0, 1.0)
