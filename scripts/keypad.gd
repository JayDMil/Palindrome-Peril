extends Control

var popup_hidden = true

@onready var popup = $popup_panel
@onready var yesno_label = $popup_panel/YesNo_label
#const NextLevel = preload("res://scripts/next_level.gd")

func _on_button_pressed():
	if popup_hidden == true:
		popup.show()
		popup_hidden = false
	else:
		popup.hide()
		popup_hidden = true


func _process(delta):
	if Input.is_action_just_pressed("back") and popup_hidden == false:
		popup.hide()
		popup_hidden = true


func _on_enter_button_pressed():
	if $popup_panel/Keycode.text == "1234":
		yesno_label.text = "Password Correct! Unlocking door..."
		NextLevel_Script.unlocked = true
		print(NextLevel_Script.unlocked)
		#NextLevel.level_beat()
	else:
		yesno_label.text = "Incorrect Password."
