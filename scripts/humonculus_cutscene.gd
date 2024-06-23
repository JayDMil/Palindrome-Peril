extends Node2D

@onready var player = $Player
@onready var humon_crawl = $Humon_crawl
@onready var vil_toss = $VilToss
@onready var explosion = $explosion
@onready var post_throw = $post_throw
@onready var humon_fucking_dies = $humon_fucking_dies
@onready var explosion_sound = $explosion_sound


func _on_animation_player_animation_finished(anim_name):
	player.hide()
	humon_crawl.hide()
	vil_toss.show()
	vil_toss.play("default")
	humon_fucking_dies.play()

func _on_vil_toss_animation_finished():
	post_throw.show()
	post_throw.play("default")
	explosion_sound.play()
	explosion.show()
	explosion.play("explode")
	vil_toss.hide()
	

func _on_post_throw_animation_finished():
	post_throw.hide()
	player.show()	


func _on_explosion_animation_finished():
	get_tree().change_scene_to_file("res://scenes/end_game.tscn")


