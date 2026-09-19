extends Node2D

var score: int = 0

@export var bg_1 : Node
@export var bg_2 : Node
@export var bg_3 : Node
@export var player : Node
@export var coins_run :Node
@export var land_spawn :Marker2D
@export var land_scenes: Array[PackedScene]


# For the background to move along with the character smootlhy
func _process(delta):
# GROUND
	if bg_2.global_position.x <= -1550:
		bg_2.global_position.x = 0
		for object in bg_2.get_children():
			object.show()


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Spawn land
func spawn_land() -> void:
	var land = land_scenes[randi_range(0, len(land_scenes) - 1)].instantiate()
	print("spawn")
	land.ground_manager = self
	land.global_position = land_spawn.global_position
	call_deferred("add_child", land)


func _start_land_spawn(body: Node2D) -> void:
	spawn_land()
