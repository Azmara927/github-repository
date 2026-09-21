extends Node2D

var revive_time: float = Time.get_unix_time_from_system() + 5

@onready var Heart5: TextureRect = $HBoxContainer/TextureRect5
@onready var Heart4: TextureRect = $HBoxContainer/TextureRect4
@onready var Heart3: TextureRect = $HBoxContainer/TextureRect3
@onready var Heart2: TextureRect = $HBoxContainer/TextureRect2
@onready var Heart1: TextureRect = $HBoxContainer/TextureRect
@onready var total_coins: Label = $Label2
@onready var run_button: Button = $ButtonRun
@onready var help: Control = $Control
@onready var save: Control = $Save_option
@onready var price: NinePatchRect = $Buildings/NinePatchRect
@onready var mouse_click: AudioStreamPlayer2D = $AudioStreamPlayer2D
@onready var heart_timer: Timer = $"Heart _timer"

@export var buildings: Array[Sprite2D]

# Called when the node enters the scene tree for the first time. (HEARTS)
func _ready() -> void:
	update_hearts()

# buildings commenting??
	if Global.buildings == {}:
		for building in buildings:
			Global.buildings[building] = false
		Global.save_score()
	else:
		var iteration: int = 0
		for building in Global.buildings:
			if Global.buildings[building]:
				print(buildings[iteration])
	print(Global.buildings)


# Total coins collected displayed in map
	Global.total_coins_earned = Global.total_coins_earned + Global.coins_this_run
	total_coins.text = str(Global.total_coins_earned)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


# Save button
func _save() -> void:
	mouse_click.play()
	save.show()


# Settings button: contains instructions, music/sound adjustment and gameplay instructions
func _settings_pressed() -> void:
	mouse_click.play()
	help.show()


# Run button: changes to running scene when clicked
func _run_pressed() -> void:
	mouse_click.play()
	if Global.player_data["lives"] > 0:
		get_tree().call_deferred("change_scene_to_file", "res://scenes/Running_bg.tscn")
	else:
		run_button.disabled = true


# Display of the hearts or lives the player has
func update_hearts():
	var hearts = [Heart1, Heart2, Heart3, Heart4, Heart5]
	for i in range(5):
		if i < Global.player_data["lives"]:
			hearts[i].modulate.a = 1.0
		else:
			hearts[i].modulate.a = 0.5


# Checks if the heart revival time is up and adjusts the remaining lives of the player accordingly
func _on_heart_timer_timeout() -> void:
	Global.check_heart_revival()
	update_hearts()
