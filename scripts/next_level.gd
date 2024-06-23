extends Area2D

var unlocked = false

func _on_body_entered(body):
	if body.is_in_group("Player") and unlocked:
		get_tree().change_scene_to_file("res://scenes/levels/level_2.tscn") 
	elif body.is_in_group("Player") and not unlocked:
		print("The door is locked.")
	else:
		print("Another body entered the area.")

func level_beat():
	if not unlocked:
		unlocked = true
		print("The level is unlocked.")
	else:
		print("The level is already unlocked.")

func is_unlocked():
	return unlocked
