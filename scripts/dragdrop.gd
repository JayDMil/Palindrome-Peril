extends Sprite2D

var dragging = false
var of = Vector2(0,0)
@onready var area_2d = $Area2D
@onready var bottle_clink = $bottle_clink

func _process(delta):
	if dragging:
		position = get_global_mouse_position() - of


func _on_button_button_down():
	print("click")
	bottle_clink.play()
	dragging = true
	of = get_global_mouse_position() - global_position


func _on_button_button_up():
	print("release")
	dragging = false


func _on_area_2d_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	if area.is_in_group("water_maker"):
		area_2d.queue_free()
