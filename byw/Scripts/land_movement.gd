extends Node2D

var ground_manager: Node2D


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#position.x -= 150 * delta
	pass


func _player_reached(body: Node2D) -> void:
	ground_manager.spawn_land()


func player_reached_land_jump(body: Node2D) -> void:
	pass # Replace with function body.


func player_reached_land_rise(body: Node2D) -> void:
	pass # Replace with function body.


func player_reached_land_dip(body: Node2D) -> void:
	pass # Replace with function body.
