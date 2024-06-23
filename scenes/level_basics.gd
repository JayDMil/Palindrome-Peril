extends Node2D


var paused = false
@onready var pause_menu = $CanvasLayer/pause_menu

func _process(delta):
	if Input.is_action_just_pressed("pause"):
		pause(false)

func pause(state):
	if state:
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
		pause_menu.hide()
		get_tree().paused = false

	else:
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		get_tree().paused = true
		pause_menu.show()

	paused = !paused
