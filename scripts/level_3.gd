extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	Dialogic.start("enter_lvl_3")
	Dialogic.timeline_ended.connect(ended)


func ended():
	Dialogic.timeline_ended.disconnect(ended)
	print("now comes the humonculus")
	get_tree().change_scene_to_file("res://scenes/humonculus_cutscene.tscn")


func _on_quit_button_pressed():
	get_tree().quit()
