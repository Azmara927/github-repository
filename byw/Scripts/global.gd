extends Node

var lives: int = 5
var coins: int = 0
  
@export var hearts = HBoxContainer
@onready var Heart5 = $HBoxContainer/TextureRect5
@onready var Heart4 = $HBoxContainer/TextureRect4
@onready var Heart3 = $HBoxContainer/TextureRect3
@onready var Heart2 = $HBoxContainer/TextureRect2
@onready var Heart1 = $HBoxContainer/TextureRect



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if lives == 4:
		Heart5.modulate.a = 147
	if lives == 3:
		Heart4.modulate.a = 147
	if lives == 2:
		Heart3.modulate.a = 147
	if lives == 1:
		Heart2.modulate.a = 147
	if lives == 0:
		Heart1.modulate.a = 147


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
