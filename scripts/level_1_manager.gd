extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	Dialogic.start("enter_lvl_1")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass	


func _on_book_button_pressed():
	Dialogic.start("book_text")


func _on_trans_button_pressed():
	Dialogic.start("transgeender")


func _on_quit_button_pressed():
	get_tree().quit()
