extends Node2D

var current_item = null

@onready var price_note: NinePatchRect = $NinePatchRect
@onready var background: Node2D = $".."
@onready var building_name: Label = $NinePatchRect/Label
@onready var price: Label = $NinePatchRect/Label2
@onready var mouse_click: AudioStreamPlayer2D = $"../AudioStreamPlayer2D"


# Variables for lock button
@onready var lock_A : TextureButton = $BlackArchery/TextureButton

# Variables for buildings
@onready var archery: Sprite2D = $BlackArchery


# Variables for construction animation
@onready var construction: AnimatedSprite2D = $Construction
# Variabes for owned buildings
@onready var owned_archery: Sprite2D = $BlueArchery
# Variables for sold buildings




# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


#The code for the functionality of the archery (building)
func _black_archery() -> void:
	current_item = archery
	building_name.text = str("ARCHERY")
	price.text = str("x $100")
	price_note.position = Vector2(257,71)
	background.modulate.a = 0.9
	
	if price_note.visible:
		mouse_click.play()
		price_note.hide()
		background.modulate.a = 1.0
	else:
		mouse_click.play()
		price_note.show()
		
#The code for the functionality of the barracks (building)
func _black_barracks() -> void:
	background.modulate.a = 0.9
	building_name.text = str("BARRACKS")
	price.text = str("x $150")
	price_note.position = Vector2(634,356)
	if price_note.visible:
		mouse_click.play()
		price_note.hide()
		background.modulate.a = 1.0
	else:
		mouse_click.play()
		price_note.show()
		
#The code for the functionality of the castle (building)
func _black_castle() -> void:
	background.modulate.a = 0.9
	building_name.text = str("CASTLE")
	price.text = str("x $200")
	price_note.position = Vector2(516,370)
	if price_note.visible:
		mouse_click.play()
		price_note.hide()
		background.modulate.a = 1.0
	else:
		mouse_click.play()
		price_note.show()

#The code for the functionality of the tower (building)
func _black_tower() -> void:
	background.modulate.a = 0.9
	building_name.text = str("TOWER")
	price.text = str("x $80")
	price_note.position = Vector2(222,365)
	if price_note.visible:
		mouse_click.play()
		price_note.hide()
		background.modulate.a = 1.0
	else:
		mouse_click.play()
		price_note.show()
		

#The code for the functionality of the house (building)
func _black_house() -> void:
	background.modulate.a = 0.9
	building_name.text = str("HOUSE")
	price.text = str("x $50")
	price_note.position = Vector2(321,374)
	if price_note.visible:
		mouse_click.play()
		price_note.hide()
		background.modulate.a = 1.0
	else:
		mouse_click.play()
		price_note.show()


#The code for the functionality of the monastery (building)
func _black_monastery() -> void:
	building_name.text = str("MONASTERY")
	price.text = str("x $150")
	price_note.position = Vector2(734,93)
	background.modulate.a = 0.9
	if price_note.visible:
		mouse_click.play()
		price_note.hide()
		background.modulate.a = 1.0
	else:
		mouse_click.play()
		price_note.show()



func _buy_archery() -> void:
	if Global.total_coins_earned >= 2:
		lock_A.hide()
		archery.hide()
		print(construction)
		construction.position = Vector2(145,114)
		construction.show()
		construction.play("construction")
		construction.hide
		owned_archery.show()
		background.modulate.a = 1.0
