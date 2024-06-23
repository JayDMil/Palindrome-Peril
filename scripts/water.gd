extends Sprite2D

var dragging = false
var of = Vector2(0,0)
@onready var timer = $Timer


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



func _on_area_2d_area_entered(area):
	if area.is_in_group("tesla_coil"):
		timer.start()	


func _on_timer_timeout():
	queue_free()
