extends Control

@onready var popup = $popup_panel
@onready var paper_sound = $Paper_sound

var popup_hidden = true

func _on_button_pressed():
	if popup_hidden == true:
		popup.show()
		popup_hidden = false
		paper_sound.play()
	else:
		popup.hide()
		popup_hidden = true
		Dialogic.start("stickynote_2")


func _process(delta):
	if Input.is_action_just_pressed("back") and popup_hidden == false:
		popup.hide()
		popup_hidden = true
		Dialogic.start("stickynote_2")
