extends Node2D

var current_building = null

# buy_note
@onready var price_note: NinePatchRect = $NinePatchRect
@onready var background: Node2D = $".."
@onready var building_name: Label = $NinePatchRect/Label
@onready var price: Label = $NinePatchRect/Label2
@onready var mouse_click: AudioStreamPlayer2D = $"../AudioStreamPlayer2D"
@onready var construction: AnimatedSprite2D = $Construction_effect/Construction
@onready var total_coins_label: Label = $"../Label2"


# sell_note
@onready var sell_note: NinePatchRect = $NinePatchRect2
@onready var owned_building_name: Label =$NinePatchRect2/Label
@onready var sell_price: Label = $NinePatchRect2/Label2


# Variables for lock button
@onready var lock_A : TextureButton = $BlackArchery/TextureButton

# Variables for buildings
@onready var archery: Sprite2D = $BlackArchery
@onready var barracks: Sprite2D = $BlackBarracks
@onready var castle: Sprite2D = $BlackCastle
@onready var tower: Sprite2D = $BlackTower
@onready var house: Sprite2D = $BlackHouse
@onready var monastery: Sprite2D = $BlackMonastery

# Variables for owned buildings
@onready var blue_archery: TextureButton = $BlueArchery
@onready var blue_barracks: TextureButton = $BlueArchery
@onready var blue_castle: TextureButton = $BlueCastle
@onready var blue_tower: TextureButton = $BlueTower
@onready var blue_house: TextureButton = $BlueHouse
@onready var blue_monastery: TextureButton = $BlueMonastery


# Variabes for owned buildings
@onready var owned_archery: Sprite2D = $BlackArchery/BlueArchery
# Variables for sold buildings




# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


# The code for the functionality of the archery (building)
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
		
# The code for the functionality of the barracks (building)
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
		
# The code for the functionality of the castle (building)
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

# The code for the functionality of the tower (building)
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
		

# The code for the functionality of the house (building)
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


# The code for the functionality of the monastery (building)
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


func _buy_button_pressed() -> void:
	if current_building == null:
		return
	current_building.buy()
	total_coins_label.text = str(Global.total_coins_earned)
	

func _on_blue_archery_pressed() -> void:
	current_building = blue_archery
	background.modulate.a = 0.9
	owned_building_name.text = str("ARCHERY")
	sell_price.text = str("x $8")
	sell_note.position = Vector2(336,113)
	if sell_note.visible:
		mouse_click.play()
		sell_note.hide()
		background.modulate.a = 1.0
	else:
		mouse_click.play()
		sell_note.show()


func _on_blue_barracks_pressed() -> void:
	current_building = blue_barracks
	background.modulate.a = 0.9
	owned_building_name.text = str("BARRACKS")
	sell_price.text = str("x $10")
	sell_note.position = Vector2(632,329)
	if sell_note.visible:
		mouse_click.play()
		sell_note.hide()
		background.modulate.a = 1.0
	else:
		mouse_click.play()
		sell_note.show()


func _on_blue_castle_pressed() -> void:
	current_building = blue_castle
	background.modulate.a = 0.9
	owned_building_name.text = str("CASTLE")
	sell_price.text = str("x $10")
	sell_note.position = Vector2(515,378)
	if sell_note.visible:
		mouse_click.play()
		sell_note.hide()
		background.modulate.a = 1.0
	else:
		mouse_click.play()
		sell_note.show()


func _on_blue_tower_pressed() -> void:
	current_building = blue_tower
	background.modulate.a = 0.9
	owned_building_name.text = str("TOWER")
	sell_price.text = str("x $6")
	sell_note.position = Vector2(220,362)
	if sell_note.visible:
		mouse_click.play()
		sell_note.hide()
		background.modulate.a = 1.0
	else:
		mouse_click.play()
		sell_note.show()


func _on_blue_house_pressed() -> void:
	current_building = blue_house
	background.modulate.a = 0.9
	owned_building_name.text = str("HOUSE")
	sell_price.text = str("x $5")
	sell_note.position = Vector2(325,366)
	if sell_note.visible:
		mouse_click.play()
		sell_note.hide()
		background.modulate.a = 1.0
	else:
		mouse_click.play()
		sell_note.show()


func _on_blue_monastery_pressed() -> void:
	current_building = blue_monastery
	background.modulate.a = 0.9
	owned_building_name.text = str("MONASTERY")
	sell_price.text = str("x $10")
	sell_note.position = Vector2(741,70)
	if sell_note.visible:
		mouse_click.play()
		sell_note.hide()
		background.modulate.a = 1.0
	else:
		mouse_click.play()
		sell_note.show()
