extends Control


@onready var running_script = "res://Scripts/running.gd"
@onready var coins_collected = $coins_collected
@onready var XP = $score
@onready var highestXP = $high_score


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	coins_collected.text = str(score)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _map() -> void:
	get_tree().call_deferred("change_scene_to_file", "res://scenes/Map.tscn")


func _retun_map() -> void:
	get_tree().call_deferred("change_scene_to_file", "res://scenes/Map.tscn")


func _revive() -> void:
	get_tree().call_deferred("change_scene_to_file", "res://scenes/Running_bg.tscn")
	#if Global.lives >= 0:
	#	mouse_default_cursor_shape
