extends Node

var lives: int = 5
var coins_this_run: int = 0
var total_coins_earned: int = 0
var XP_this_run: int = 0
var high_score: int = 0


@export var coins_run = Label
@export var hearts = HBoxContainer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
