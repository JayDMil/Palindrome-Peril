extends Control


@onready var yesno_label = $popup_panel/YesNo_label
const NEXT_LEVEL = preload("res://scenes/next_level.tscn")

func _on_enter_button_pressed():
	if $popup_panel/Keycode.text == "1234":
		yesno_label.text = "Password Correct! Unlocking door..."
		NEXT_LEVEL.level_beat()
	else:
		yesno_label.text = "Incorrect Password."
