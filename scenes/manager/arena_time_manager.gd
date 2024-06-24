extends Node

var number_days = 0
@onready var timer = $Timer

func get_time_elapsed():
	if timer.time_left == 900:
		number_days += 1
	return [timer.wait_time - timer.time_left, number_days]
