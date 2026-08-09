extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
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

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
