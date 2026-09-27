extends CharacterBody2D

const SPEED = 110.0
const JUMP_VELOCITY = -550.0

var coins: int = 0
var lives: int = 5
var revive_time = Time.get_unix_time_from_system() + 5

@onready var XP = $"../../../XP"
@onready var PickUpSound: AudioStreamPlayer2D = $PickUpSound
@onready var EnemySound: AudioStreamPlayer2D = $EnemyDeath

@export var label: Label
 
# Player movement: 2D platformer
func _physics_process(delta) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	velocity.x = 150
	
	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	if Input.is_action_pressed("ui_down"):
		position.y += 1
		
	move_and_slide()


# Player interaction
# Collecting coin: if the player collides with the coin, then global.total coins and coins is increased by one and Global.coins_this_run is set to coins.
func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("collectible"):
		coins += 1
		Global.total_coins_earned += 1
# This way Global.coins is reset each time, the running scene is loaded
		Global.coins_this_run = coins
		label.text = str(coins)
		PickUpSound.play()
		area.hide()
# Colliding with enemy: player loses one heart
	if area.is_in_group("damager"):
		Global.lose_heart()
		Global.save_score
# Loads death screen
		get_tree().call_deferred("change_scene_to_file", "res://Scenes/death.tscn")
