extends CanvasLayer

@export var arena_time_manager: Node
@onready var label = $%Label

func _process(delta):
	if arena_time_manager == null:
		return
	var time_elapsed = arena_time_manager.get_time_elapsed()[0]
	var number_days = arena_time_manager.get_time_elapsed()[1]
	label.text = format_seconds_to_string(time_elapsed, number_days)


func format_seconds_to_string(seconds: float, number_days: int):
	var current_day = number_days  # Start day count from 1
	var seconds_in_current_day = int(seconds) # Seconds into the current day
	
	var hours = floor(seconds_in_current_day / 24)  # Hours (scaled down for game time)
	var minutes = floor(seconds_in_current_day % 24 * 2.5)   # Minutes (scaled down)

	# Format the time as "HH:MM:SS" for display
	var time_string = "%02d:%02d" % [hours, minutes]
	return "Day " + str(current_day) + ", Time: " + time_string
	# bug: stopped at 2:30
	
	

