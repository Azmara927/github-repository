extends Control


@onready var running_script = "res://Scripts/running.gd"
@onready var coins_collected = $coins_collected
@onready var current_XP = $score
@onready var highestXP = $high_score


#Called when the node enters the scene tree for the first time.
func _ready() -> void:
	coins_collected.text = str(Global.coins_this_run)
	current_XP.text = str(Global.XP_this_run)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _revive() -> void:
	get_tree().call_deferred("change_scene_to_file", "res://scenes/Running_bg.tscn")
	#if Global.lives >= 0:
	#	mouse_default_cursor_shape


func _map() -> void:
	get_tree().call_deferred("change_scene_to_file", "res://scenes/Map.tscn")
