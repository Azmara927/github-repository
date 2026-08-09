extends Node2D

@onready var Heart5: TextureRect = $HBoxContainer/TextureRect5
@onready var Heart4: TextureRect = $HBoxContainer/TextureRect4
@onready var Heart3: TextureRect = $HBoxContainer/TextureRect3
@onready var Heart2: TextureRect = $HBoxContainer/TextureRect2
@onready var Heart1: TextureRect = $HBoxContainer/TextureRect
@onready var total_coins: Label = $Label2
@onready var run_button: Button = $ButtonRun
@onready var help: Control = $Control
@onready var save: Control = $Save_option
@onready var price: NinePatchRect = $BlackArchery/NinePatchRect
@onready var mouse_click: AudioStreamPlayer2D = $AudioStreamPlayer2D


# Called when the node enters the scene tree for the first time. (HEARTS)
#Display of the hearts or lives the player has
func _ready() -> void:
	print(Global.lives)
	if Global.lives == 4:
		Heart5.modulate.a = 0.5
	if Global.lives == 3:
		Heart5.modulate.a = 0.5
		Heart4.modulate.a = 0.5
	if Global.lives == 2:
		Heart5.modulate.a = 0.5
		Heart4.modulate.a = 0.5
		Heart3.modulate.a = 0.5
	if Global.lives == 1:
		Heart5.modulate.a = 0.5
		Heart4.modulate.a = 0.5
		Heart3.modulate.a = 0.5
		Heart2.modulate.a = 0.5
	if Global.lives == 0:
		Heart5.modulate.a = 0.5
		Heart4.modulate.a = 0.5
		Heart3.modulate.a = 0.5
		Heart2.modulate.a = 0.5
		Heart1.modulate.a = 0.5
#total coins eanred not showing in the map
	total_coins.text = str(Global.coins_this_run)

		
#Coins collected
	Global.total_coins_earned += Global.coins_this_run
	total_coins.text = str(Global.total_coins_earned)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


#Save button
func _save() -> void:
	mouse_click.play()
	save.show()


#Settings button: contains instructions, music/sound adjustment and gameplay instructions
func _settings_pressed() -> void:
	mouse_click.play()
	help.show()


#Run button: changes to running scene when clicked
func _run_pressed() -> void:
	mouse_click.play()
	get_tree().call_deferred("change_scene_to_file", "res://scenes/Running_bg.tscn")
