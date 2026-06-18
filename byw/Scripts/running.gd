extends Node2D


var XP: int = 0

@onready var XP_label = $XP

@export var timer: Timer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _pause() -> void:
	get_tree().call_deferred("change_scene_to_file", "res://scenes/pause.tscn")


func _XP() -> void:
	XP += 1 * 17
	XP_label.text = str(XP)
