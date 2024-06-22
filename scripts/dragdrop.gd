extends Sprite2D

var dragging = false
var of = Vector2(0,0)
const evil_water = preload("res://scenes/objects/evil_water.tscn")

func _process(delta):
	if dragging:
		position = get_global_mouse_position() - of


func _on_button_button_down():
	print("click")
	dragging = true
	of = get_global_mouse_position() - global_position


func _on_button_button_up():
	print("release")
	dragging = false


func _on_area_2d_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	if area.is_in_group("evil_water_components"):
		print("combined!")
		create_evil_water()
		#queue_free()


func create_evil_water():
	print("evil water made")
	var instance = evil_water.instantiate()
	add_child(instance)
	
