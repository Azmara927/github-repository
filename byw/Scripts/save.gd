extends Control

@onready var save: Control = $"."


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

#Go back button: when clicked hides the save menu
func _back() -> void:
	save.hide()
