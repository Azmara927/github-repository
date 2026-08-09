extends Control

@onready var help: Control = $Control
@onready var mouse_click: AudioStreamPlayer2D = $AudioStreamPlayer2D


#Play button: changes to Map scene when clicked
func _play() -> void:
	mouse_click.play
	get_tree().call_deferred("change_scene_to_file", "res://scenes/Map.tscn")


#Quit button: closes game when clicked
func _quit() -> void:
	mouse_click.play
	get_tree().quit()


#Help button: shows game instructions, sound adjustments and gameplay instructions
func _help() -> void:
	mouse_click.play
	help.show()
