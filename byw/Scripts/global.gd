extends Node

const SAVEFILE = "user://savefile.save"


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
	"lives": 5,
	"heart_timers": []
}


# @export var coins_run = Label
# @export var hearts = HBoxContainer

func _ready() -> void:
	load_score()
	check_heart_revival()
	print(high_score)


# Saves game
func save_score():
	var file_save = FileAccess.open(SAVEFILE, FileAccess.WRITE)
	file_save.store_32(high_score)
	file_save.store_var(buildings)
	file_save.store_var(player_data["lives"])
	print("oop")
	

# Loads game
func load_score():
	var file_load = FileAccess.open(SAVEFILE, FileAccess.READ)
	if FileAccess.file_exists(SAVEFILE):
		high_score = file_load.get_32()
		buildings = file_load.get_var()
		player_data["lives"]


# What happens when the player loses a heart
func lose_heart():
	if player_data["lives"] > 0:
		player_data["lives"]-= 1
		
		var revive_time = Time.get_unix_time_from_system() + 60
		print(Time.get_unix_time_from_system())
		print(revive_time)
		player_data["heart_timers"].append(revive_time)
		print(player_data["heart_timers"])


# Checks if the time taken to revive a heart is completed and increases player's lives if time is completed
func check_heart_revival():
	var current_time = Time.get_unix_time_from_system()
	print(player_data["heart_timers"])
	for revive_time in player_data["heart_timers"].duplicate():
		if current_time >= revive_time:
			print(current_time)
			print(revive_time)
			player_data["lives"] += 1
			player_data["heart_timers"].erase(revive_time)
		save_score()



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
