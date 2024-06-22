extends Control

var is_paused = false
@onready var pause_menu = $"."

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (Input.is_action_just_pressed("pause")) and (is_paused == false):
		print(is_paused)
		pausegame()
	elif (Input.is_action_just_pressed("pause")) and (is_paused == true):
		print(is_paused)
		resumegame()


func _on_resume_button_pressed():
	resumegame()
	

func _on_quit_button_pressed():
	get_tree().quit()


func pausegame():
	print("paused")
	get_tree().paused = true
	is_paused = true
	pause_menu.show()


func resumegame():
	print("resumed")
	get_tree().paused = false
	is_paused = false
	pause_menu.hide()



