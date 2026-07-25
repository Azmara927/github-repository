extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func black_barracks() -> void:
	pass # Replace with function body.


func black_archery() -> void:
	get_tree().call_deferred("res://Scenes/building_price.tscn")


func black_castle() -> void:
	pass # Replace with function body.


func black_tower() -> void:
	pass # Replace with function body.


func black_house() -> void:
	pass # Replace with function body.


func black_monastery() -> void:
	pass # Replace with function body.


func _button_archery() -> void:
	get_tree().call_deferred("res://Scenes/building_price.tscn")
