extends Node2D



# Called when the node enters the scene tree for the first time.
func _ready():
	#get_tree().change_scene("res://scenes/levels/Intro.tscn")
	get_tree().change_scene("res://scenes/levels/Intro.tscn")
	pass # Replace with function body.



func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed and event.scancode == KEY_ESCAPE:
			get_tree().quit()
