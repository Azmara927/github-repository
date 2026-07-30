extends Control

@onready var help: Control = $Control
@onready var mouse_click: AudioStreamPlayer2D = $AudioStreamPlayer2D


func _play() -> void:
	mouse_click.play
	get_tree().call_deferred("change_scene_to_file", "res://scenes/Map.tscn")


func _quit() -> void:
	mouse_click.play
	get_tree().quit()


func _help() -> void:
	mouse_click.play
	help.show()
