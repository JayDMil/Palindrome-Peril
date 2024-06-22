extends Control

@onready var popup = $popup_panel

var popup_hidden = true

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
