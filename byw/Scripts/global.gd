extends Node

const SAVEFILE = "user://savefile.save"

var lives: int = 5
var coins_this_run: int = 0
var total_coins_earned: int = 0
var XP_this_run: int = 0
var high_score: int = 0
var total_buildings: int = 0
var archery_owned: bool = false
var baracks_owned: bool = false
var castle_owned: bool = false
var tower_owned: bool = false
var house_owned: bool = false
var monastery_owned: bool = false
var file_save = FileAccess.open(SAVEFILE, FileAccess.WRITE_READ)
var file_load = FileAccess.open(SAVEFILE, FileAccess.READ)


var buildings = {
	
}



# @export var coins_run = Label
# @export var hearts = HBoxContainer

func _ready() -> void:
	load_score()


func save_score():
	file_save.store_32(high_score)
	

func load_score():
	if FileAccess.file_exists(SAVEFILE):
		high_score = file_load.get_32()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
