extends Sprite2D

@onready var price_note: NinePatchRect = $NinePatchRect
@onready var background: Node2D = $".."
@onready var building_name: Label = $NinePatchRect/Label
@onready var price: Label = $NinePatchRect/Label2
@onready var mouse_click: AudioStreamPlayer2D = $AudioStreamPlayer2D



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func black_barracks() -> void:
	background.modulate.a = 0.9
	building_name.text = str("BARRACKS")
	price.text = str("x $150")
	price_note.position = Vector2(396,223)
	if price_note.visible:
		mouse_click.play()
		price_note.hide()
		background.modulate.a = 1.0
	else:
		mouse_click.play()
		price_note.show()


func black_castle() -> void:
	background.modulate.a = 0.9
	building_name.text = str("CASTLE")
	price.text = str("x $200")
	price_note.position = Vector2(303,273)
	if price_note.visible:
		mouse_click.play()
		price_note.hide()
		background.modulate.a = 1.0
	else:
		mouse_click.play()
		price_note.show()


func black_tower() -> void:
	background.modulate.a = 0.9
	building_name.text = str("TOWER")
	price.text = str("x $80")
	price_note.position = Vector2(43,205)
	if price_note.visible:
		mouse_click.play()
		price_note.hide()
		background.modulate.a = 1.0
	else:
		mouse_click.play()
		price_note.show()


func black_house() -> void:
	background.modulate.a = 0.9
	building_name.text = str("HOUSE")
	price.text = str("x $50")
	price_note.position = Vector2(111,257)
	if price_note.visible:
		mouse_click.play()
		price_note.hide()
		background.modulate.a = 1.0
	else:
		mouse_click.play()
		price_note.show()


func black_monastery() -> void:
	building_name.text = str("MONASTERY")
	price.text = str("x $150")
	price_note.position = Vector2(475,-9)
	background.modulate.a = 0.9
	if price_note.visible:
		mouse_click.play()
		price_note.hide()
		background.modulate.a = 1.0
	else:
		mouse_click.play()
		price_note.show()


func _button_archery() -> void:
	building_name.text = str("ARCHERY")
	price.text = str("x $100")
	price_note.position = Vector2(71,-21)
	background.modulate.a = 0.9
	
	if price_note.visible:
		mouse_click.play()
		price_note.hide()
		background.modulate.a = 1.0
	else:
		mouse_click.play()
		price_note.show()
	


func _buy_archery() -> void:
	pass #Animation.play + show replace with blue building
