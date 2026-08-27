extends Node


@export var price: int = 100
@export var old_building: Sprite2D 
@export var owned_building: TextureButton
@export var lock: TextureButton
@export var construction_position: Vector2


# @onready var construction_effect: Node2D = $"../Construction_effect"
@onready var construction: AnimatedSprite2D = $"../Construction"
@onready var price_note: NinePatchRect = $"../NinePatchRect"
@onready var background: Node2D = $"../.."


# The buy function; what happens when the player buys the building
func buy():
	if Global.total_coins_earned >= price:
		lock.hide()
		old_building.hide()
		price_note.hide()
		Global.total_buildings += 1
		Global.buildings[self] = true
		print(Global.buildings)
		print(Global.total_buildings)
		Global.total_coins_earned = Global.total_coins_earned - price
		print(Global.total_coins_earned)
		print(construction)
		construction.global_position = construction_position 
		construction.show()
		print("construction visible: ", construction.visible)
		print("sprite visible: ", construction.visible)
		construction.play("construction")
		print(construction.is_playing())
		construction.hide()
		owned_building.show()
		background.modulate.a = 1.0
