extends CharacterBody2D


const SPEED = 110.0
const JUMP_VELOCITY = -550.0

var coins: int = 0
var lives: int = 5

@onready var XP = $"../../../XP"
@onready var PickUpSound: AudioStreamPlayer2D = $PickUpSound
@onready var EnemySound: AudioStreamPlayer2D = $EnemyDeath


@export var label: Label
 

func _physics_process(delta) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	#var direction := Input.get_axis("ui_left", "ui_right")
	#if direction:
	#velocity.x = SPEED
	#else:
		#velocity.x = move_toward(velocity.x, 0, SPEED)
		
	if Input.is_action_pressed("ui_down"):
		position.y += 1
		
	move_and_slide()
		


func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("collectible"):
		coins += 1
		Global.coins_this_run = coins
		label.text = str(coins)
		PickUpSound.play()
		area.hide()
	if area.is_in_group("damager"):
		Global.lives -= 1
		get_tree().call_deferred("change_scene_to_file", "res://Scenes/death.tscn")
