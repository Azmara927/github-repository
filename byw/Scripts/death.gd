extends Control

var XP = Global.XP_this_run

@onready var running_script = "res://Scripts/running.gd"
@onready var coins_collected = $coins_collected
@onready var current_XP = $score
@onready var highestXP = $high_score
@onready var run_button = $ButtonRun
@onready var revive_button = $Button
@onready var Death: AudioStreamPlayer2D = $LevelDeath


# Called when the node enters the scene tree for the first time.
# Imports and displays the coins earned and XP value from the running scene to the death scene
func _ready() -> void:
	coins_collected.text = str(Global.coins_this_run)
	current_XP.text = str(Global.XP_this_run)
	highestXP.text = str(Global.high_score)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


# Prevents the player from being able to run if they have zero lives/hearts
func _revive() -> void:
	if Global.player_data["lives"] > 0:
		get_tree().call_deferred("change_scene_to_file", "res://scenes/Running_bg.tscn")
	else:
		revive_button.disabled = true


# Map button: when clicked changes to Map scene
func _map() -> void:
	Global.save_score()
	get_tree().call_deferred("change_scene_to_file", "res://scenes/Map.tscn")
