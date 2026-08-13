extends Marker2D

var distance: float


@export var player: CharacterBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	distance = global_position.x - player.global_position.x


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	global_position.x = player.global_position.x + distance
