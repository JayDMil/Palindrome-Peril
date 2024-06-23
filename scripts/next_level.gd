extends Area2D

var unlocked = false

#func _process(delta):
	#print("unlocked = ", unlocked)

func _on_body_entered(body):
	if body.is_in_group("Player") and unlocked == true:
		var current_scene_file = get_tree().current_scene.scene_file_path
		var next_level_number = current_scene_file.to_int() + 1
		print(next_level_number)
		
		var next_level_path = "res://scenes/levels/level_" + str(next_level_number) + ".tscn"
		print(next_level_path)
		get_tree().change_scene_to_file(next_level_path)
		unlocked = false
	else:
		print("the door is locked.")

func level_beat():
	if unlocked == false:
		unlocked = true
	else:
		return
