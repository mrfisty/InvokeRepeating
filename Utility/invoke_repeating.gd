extends Node

class_name Utility

# Invokes a function in wait_time seconds, then repeatedly every repeat_rate seconds.
static func invoke_repeating(parent: Node, function: Callable, wait_time: float, repeat_rate: float):
	var timer = Timer.new()
	timer.connect("timeout", function)
	timer.set_wait_time(repeat_rate)
	timer.set_one_shot(false)
	timer.set_autostart(false)
	parent.add_child(timer)
	await parent.get_tree().create_timer(wait_time).timeout
	timer.start()
