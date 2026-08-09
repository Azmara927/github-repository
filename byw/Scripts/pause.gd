extends Control


@onready var pause_menu = "pause.tscn"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


#Return to map button: changes to Map scene when clicked
func _return_map() -> void:
	get_tree().call_deferred("change_scene_to_file", "res://scenes/Map.tscn")


#Resume button: Unfreezes the screen resumes gameplay when clicked
func _resume() -> void:
	get_tree().paused = false
	queue_free()
