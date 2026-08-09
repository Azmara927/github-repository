extends Control

var hover_cursor = preload ("res://Assets/Cursor_03.png")



@onready var running_script = "res://Scripts/running.gd"
@onready var coins_collected = $coins_collected
@onready var current_XP = $score
@onready var highestXP = $high_score
@onready var run_button = $ButtonRun
@onready var revive_button = $Button
@onready var Death: AudioStreamPlayer2D = $LevelDeath


#Called when the node enters the scene tree for the first time.
#Imoprts and displays the coins earned and XP value from the running scene to the death scene
func _ready() -> void:
	coins_collected.text = str(Global.coins_this_run)
	current_XP.text = str(Global.XP_this_run)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


#Prevents the player from being able to run if they have zero lives/hearts
func _revive() -> void:
	if Global.lives > 0:
		get_tree().call_deferred("change_scene_to_file", "res://scenes/Running_bg.tscn")
	else:
		revive_button.disabled = true
#revive disable not working
#	if Global.lives <= 0:
#		disabled


#Map button: when clicked changes to Map scene
func _map() -> void:
	get_tree().call_deferred("change_scene_to_file", "res://scenes/Map.tscn")
	
	


#add the mouse hovering part
#func _mouse_entered() -> void:
#	if Global.lives <= 0:
#		Input.set_custom_mouse_cursor(hover_cursor)

#func _mouse_exited() -> void:
#	Input.set_default_cursor_shape
