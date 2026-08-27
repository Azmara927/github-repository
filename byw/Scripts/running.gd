extends Node2D


var XP: int = 0

@onready var XP_label = $CanvasLayer/XP

@export var timer: Timer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


#func _pause() -> void:
#	get_tree().call_deferred("change_scene_to_file", "res://scenes/pause.tscn")

# XP coding
func _XP() -> void:
	XP += 1 * 17
	XP_label.text = str(XP)
# Record XP value in global so that it can be displayed in death scene
	Global.XP_this_run = XP
	if XP > Global.high_score:
		Global.high_score = XP
	


# Pause button: Pauses gameplay and shows pause menu
func _pause() -> void:
	var pause_menu = preload("res://Scenes/pause.tscn").instantiate()
	add_child(pause_menu)
	get_tree().paused = true
	pass # Replace with function body.
