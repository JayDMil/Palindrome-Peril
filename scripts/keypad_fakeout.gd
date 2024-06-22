extends Control

@onready var popup = $popup_panel
@onready var no_label = $popup_panel/No_label
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


func _on_enter_button_pressed():
	no_label.text = "Incorrect Password."
