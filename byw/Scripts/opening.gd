extends Control


func _play() -> void:
	get_tree().call_deferred("change_scene_to_file", "res://scenes/Map.tscn")


func _quit() -> void:
	get_tree().quit()


func _help() -> void:
	pass # Replace with function body.
