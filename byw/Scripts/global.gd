extends Node

const SAVEFILE = "user://savefile.save"

var lives: int = 5
var revive_time = Time.get_unix_time_from_system() + 5
var coins_this_run: int = 0
var total_coins_earned: int = 0
var XP_this_run: int = 0
var high_score: int = 5
var total_buildings: int = 0
var archery_owned: bool = false
var baracks_owned: bool = false
var castle_owned: bool = false
var tower_owned: bool = false
var house_owned: bool = false
var monastery_owned: bool = false

var buildings = {
	
}


var player_data = {
	lives: 5,
	"heart_timers": []
}


# @export var coins_run = Label
# @export var hearts = HBoxContainer

func _ready() -> void:
	load_score()
	check_heart_revival()
	print(high_score)


func save_score():
	var file_save = FileAccess.open(SAVEFILE, FileAccess.WRITE)
	file_save.store_32(high_score)
	file_save.store_var(buildings)
	print("oop")
	

func load_score():
	var file_load = FileAccess.open(SAVEFILE, FileAccess.READ)
	if FileAccess.file_exists(SAVEFILE):
		high_score = file_load.get_32()
		buildings = file_load.get_var()


func check_heart_revival():
	var current_time = Time.get_unix_time_from_system()
	for revive_time in player_data["heart_timers"].duplicate():
		if current_time >= revive_time:
			if lives < 5:
				lives += 1
			player_data["heart_timers"].erase(revive_time)
#		save_game()



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
