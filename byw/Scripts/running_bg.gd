extends Node2D

var score: int = 0

@export var bg_1 : Node
@export var bg_2 : Node
@export var bg_3 : Node
@export var player : Node


func _process(delta):
	#bg_1.global_position.x -= 50 * delta
	bg_2.global_position.x -= 80 * delta
	#bg_3.global_position.x -= 50 * delta
	player.global_position.x -= 40 * delta
	#if bg_1.global_position.x <= 0:
		#bg_1.global_position.x = 1000
	if bg_2.global_position.x <= -1157:
		bg_2.global_position.x = 660
		for object in bg_2.get_children():
			object.show()
	#if bg_3.global_position.x <= 0:
		#bg_3.global_position.x <= 620




# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	if Input.is_action_pressed("ui_up"):
#		score += 1
#		print(score)





func coins(body: Node2D) -> void:
	if Input.is_action_pressed("ui_up"):
		score += 1
		print(score)
