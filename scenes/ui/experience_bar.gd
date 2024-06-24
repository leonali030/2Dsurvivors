extends CanvasLayer
@export var experience_manager: Node
@onready var progress_bar = $MarginContainer/ProgressBar




# Called when the node enters the scene tree for the first time.
func _ready():
	experience_manager.experience_updated.connect(on_experience_updated)


func on_experience_updated(current_experience: float, target_experience:float):
	var bar_value = current_experience / target_experience
	$MarginContainer/ProgressBar.value = bar_value
