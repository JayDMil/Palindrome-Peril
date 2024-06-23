extends Node2D

var evil_water = preload("res://scenes/objects/evil_water.tscn")
var num_bottles = 0
var is_water_made_yet = false

func _ready():
	Dialogic.start("enter_lvl_2")

func _on_area_2d_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	print("bottle +")
	if area.is_in_group("evil_water_component"):
		num_bottles += 1
		print(num_bottles)
	if num_bottles == 2 and is_water_made_yet == false:
		print("combined!")
		create_evil_water(Vector2(-380,77))


func create_evil_water(pos):
	print("evil water made")
	Dialogic.start("water_text")
	var instance = evil_water.instantiate()
	instance.position = pos
	add_child(instance)


func _on_button_pressed():
	Dialogic.start("water_maker_text")


func _on_quit_button_pressed():
	get_tree().quit()
