extends Node2D

@onready var bg_music: AudioStreamPlayer2D = $AudioStreamPlayer2D


# Called when the node enters the scene tree for the first time.
# The background music
func _ready() -> void:
	bg_music.autoplay


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
