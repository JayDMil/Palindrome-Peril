extends Node2D

@onready var animated_sprite = $AnimatedSprite2D
@onready var zap_sound = $zap_sound
@onready var doors_unlocked = $doors_unlocked
@onready var next_levels = [
	get_node("/root/level_2/Level_Basics/Next_Level"),
	get_node("/root/level_2/Level_Basics/Next_Level2"),
]



func _on_area_2d_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	if area.is_in_group("water"):
		print("ZAP!")
		zap_sound.play()
		animated_sprite.play("destroyed")
		doors_unlocked.play()
		Dialogic.start("tesla_broken")
		
		for next_level in next_levels:
			if next_level != null:
				next_level.level_beat()
				print("Level complete.")
