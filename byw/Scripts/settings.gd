extends Control

@onready var help: Control = $"."

var master_bus_index = AudioServer.get_bus_index("Master")
var SFX_bus_index = AudioServer.get_bus_index("SFX")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


#Go back button: when clicked hides the settings menu
func _on_button_pressed() -> void:
	help.hide()


#Hslider for music volume adjustment
func _on_master_value_changed(value: float) -> void:
	AudioServer.set_bus_volume_db(master_bus_index, linear_to_db(value))


#Hslider for SFX volume adjustment
func _on_sfx_value_changed(value: float) -> void:
	AudioServer.set_bus_volume_db(SFX_bus_index, linear_to_db(value))
