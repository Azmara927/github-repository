extends TextureButton

@export var price: int = 100
@export var owned_building: TextureButton
@export var sell_building: TextureButton
@export var construction_position: Vector2

@onready var construction: AnimatedSprite2D = $"../Construction"
@onready var sell_note: NinePatchRect = $"../NinePatchRect2"
@onready var background: Node2D = $"../.."

func sell():
		owned_building.hide()
		sell_note.hide()
		Global.total_buildings -= 1
		print(Global.total_buildings)
		Global.total_coins_earned = Global.total_coins_earned + price
		print(Global.total_coins_earned)
		print(construction)
		construction.global_position = construction_position 
		construction.show()
		print("construction visible: ", construction.visible)
		print("sprite visible: ", construction.visible)
		construction.play("construction")
		print(construction.is_playing())
		construction.hide()
		sell_building.show()
		background.modulate.a = 1.0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
