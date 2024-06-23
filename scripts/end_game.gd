extends Node2D

@onready var animation_player = $AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	Dialogic.start("end_game")
	Dialogic.timeline_ended.connect(ended)


func ended():
	Dialogic.timeline_ended.disconnect(ended)
	print("the end")
	animation_player.play("fade_in")

func _on_animation_player_animation_finished(anim_name):
	get_tree().change_scene_to_file("res://scenes/end_credits.tscn")
