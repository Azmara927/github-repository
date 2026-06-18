extends Node2D

@onready var Heart5: TextureRect = $HBoxContainer/TextureRect5
@onready var Heart4: TextureRect = $HBoxContainer/TextureRect4
@onready var Heart3: TextureRect = $HBoxContainer/TextureRect3
@onready var Heart2: TextureRect = $HBoxContainer/TextureRect2
@onready var Heart1: TextureRect = $HBoxContainer/TextureRect


func _run() -> void:
	get_tree().call_deferred("change_scene_to_file", "res://scenes/Running_bg.tscn")



# Called when the node enters the scene tree for the first time. (HEARTS)
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
		
#Coins collected
	print(Global.coins)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _save() -> void:
	get_tree().call_deferred("change_scene_to_file", "res://scenes/save.tscn")
