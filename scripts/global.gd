extends Node2D

var game_movement_speed_factor = 5
var ai_movement_speed_factor = 4
const LIGHT_STICK = preload("res://scenes/objects/oLightStick.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed and event.scancode == KEY_ESCAPE:
			get_tree().quit()
