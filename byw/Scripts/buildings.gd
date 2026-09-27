extends Node2D

var current_building = null

@onready var price_note: NinePatchRect = $NinePatchRect
@onready var background: Node2D = $".."
@onready var building_name: Label = $NinePatchRect/Label
@onready var price: Label = $NinePatchRect/Label2
@onready var mouse_click: AudioStreamPlayer2D = $"../../AudioStreamPlayer2D"
@onready var construction: AnimatedSprite2D = $Construction_effect/Construction
@onready var total_coins_label: Label = $"../../Label2"
@onready var lock_A : TextureButton = $BlackArchery/TextureButton

# Variables for buildings
@export var archery: Sprite2D
@export var barracks: Sprite2D
@export var castle: Sprite2D 
@export var tower: Sprite2D
@export var house: Sprite2D
@export var monastery: Sprite2D


# Variables for owned buildings
@onready var blue_archery: TextureButton = $BlueArchery
@onready var blue_barracks: TextureButton = $BlueArchery
@onready var blue_castle: TextureButton = $BlueCastle
@onready var blue_tower: TextureButton = $BlueTower
@onready var blue_house: TextureButton = $BlueHouse
@onready var blue_monastery: TextureButton = $BlueMonastery


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


# Sets the current building as archery, sets the price at $2, brings the price note close to the archery and reduces the opacity of the map.
func _black_archery() -> void:
	current_building = archery
	building_name.text = str("ARCHERY")
	price.text = str("x $2")
	price_note.position = Vector2(257,71)
	background.modulate.a = 0.9
	
	if price_note.visible:
		mouse_click.play()
		price_note.hide()
		background.modulate.a = 1.0
	else:
		mouse_click.play()
		price_note.show()


# Sets the current building as barracks, sets the price at $5, brings the price note close to the barrack and reduces the opacity of the map.
func _black_barracks() -> void:
	current_building = barracks
	background.modulate.a = 0.9
	building_name.text = str("BARRACKS")
	price.text = str("x $5")
	price_note.position = Vector2(634,356)
	if price_note.visible:
		mouse_click.play()
		price_note.hide()
		background.modulate.a = 1.0
	else:
		mouse_click.play()
		price_note.show()


# Sets the current building as castle, sets the price at $4, brings the price note close to the castle and reduces the opacity of the map.
func _black_castle() -> void:
	current_building = castle
	background.modulate.a = 0.9
	building_name.text = str("CASTLE")
	price.text = str("x $4")
	price_note.position = Vector2(516,370)
	if price_note.visible:
		mouse_click.play()
		price_note.hide()
		background.modulate.a = 1.0
	else:
		mouse_click.play()
		price_note.show()


# Sets the current building as tower, sets the price at $2, brings the price note close to the tower and reduces the opacity of the map.
func _black_tower() -> void:
	current_building = tower
	background.modulate.a = 0.9
	building_name.text = str("TOWER")
	price.text = str("x $2")
	price_note.position = Vector2(222,365)
	if price_note.visible:
		mouse_click.play()
		price_note.hide()
		background.modulate.a = 1.0
	else:
		mouse_click.play()
		price_note.show()


# Sets the current building as house, sets the price at $3, brings the price note close to the house and reduces the opacity of the map.
func _black_house() -> void:
	current_building = house
	background.modulate.a = 0.9
	building_name.text = str("HOUSE")
	price.text = str("x $3")
	price_note.position = Vector2(321,374)
	if price_note.visible:
		mouse_click.play()
		price_note.hide()
		background.modulate.a = 1.0
	else:
		mouse_click.play()
		price_note.show()


# Sets the current building as monastery, sets the price at $4, brings the price note close to the monastery and reduces the opacity of the map.
func _black_monastery() -> void:
	current_building = monastery
	building_name.text = str("MONASTERY")
	price.text = str("x $4")
	price_note.position = Vector2(734,93)
	background.modulate.a = 0.9
	if price_note.visible:
		mouse_click.play()
		price_note.hide()
		background.modulate.a = 1.0
	else:
		mouse_click.play()
		price_note.show()


# states that if no building is clicked then do nothing, but if a building is clicked then "buy" the building
func _buy_button_pressed() -> void:
	if current_building == null:
		return
	current_building.buy()
	total_coins_label.text = str(Global.total_coins_earned)
