extends CharacterBody2D

var speed: float = 300.0

@onready var animation: AnimatedSprite2D = $AnimatedSprite2D


# Player movement (2D top down)
func _process(delta: float) -> void:
	var direction: Vector2 = Vector2(0.0, 0.0)
	direction.x = Input.get_axis("ui_left", "ui_right")
	direction.y = Input.get_axis("ui_up", "ui_down")
	if direction: 
		animation.play("run")
		if direction.x > 0:
			animation.flip_h = true
		elif direction.x < 0:
			animation.flip_h = false
	else:
		animation.play("idle")
	
	
	velocity = speed * direction.normalized()
	
	move_and_slide()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
