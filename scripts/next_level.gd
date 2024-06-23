extends Area2D

static var next_level_number = 0
const MAX_LEVEL = 3

var unlocked = false
var current_level = 1

func _ready():
	current_level = next_level_number
	unlocked = false

func _on_body_entered(body):
	if body.is_in_group("Player") and unlocked:
		var next_level_path = "res://scenes/levels/level_" + str(next_level_number) + ".tscn"
		get_tree().change_scene_to_file(next_level_path)
	elif body.is_in_group("Player") and not unlocked:
		print("The door is locked.")
	else:
		print("Another body entered the area.")

func level_beat():
	if not unlocked:
		unlocked = true
		print("The level is unlocked.")
		current_level += 1
		next_level_number += 1
		if next_level_number > MAX_LEVEL:
			next_level_number = MAX_LEVEL
	else:
		print("The level is already unlocked.")

