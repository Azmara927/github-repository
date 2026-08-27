class_name data extends Resource

@export var high_score: int = 0 

const SAVE_PATH = "user://data.tres"

func save() -> void:
	ResourceSaver.save(self, SAVE_PATH)
