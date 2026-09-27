extends Node

@export var price: int = 100
@export var old_building: Sprite2D 
@export var owned_building: TextureButton
@export var lock: TextureButton
@export var construction_position: Vector2

@onready var construction: AnimatedSprite2D = $"../Construction"
@onready var price_note: NinePatchRect = $"../NinePatchRect"
@onready var background: Node2D = $"../.."
@onready var archery: TextureButton = $"../BlueArchery"
@onready var barracks: TextureButton = $"../BlueBarracks"
@onready var castle: TextureButton = $"../BlueCastle"
@onready var  tower: TextureButton = $"../BlueTower"
@onready var house: TextureButton = $"../BlueHouse"
@onready var monastery: TextureButton = $"../BlueMonastery"


# The buy function; when the player buys the building, the lock disappears, the black building is hidden and a blue building appears
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

# checks which building was "purchased" and stores which building was purchased by changing the boolean to true.
		if owned_building == archery:
			Global.archery_owned = true
		if owned_building == barracks:
			Global.baracks_owned = true
		if owned_building == castle:
			Global.castle_owned = true
		if owned_building == tower:
			Global.tower_owned = true
		if owned_building == house:
			Global.house_owned = true
		if owned_building == monastery:
			Global.monastery_owned = true
