extends Node2D

var game_movement_speed_factor = 5
var ai_movement_speed_factor = 4
const LIGHT_STICK = preload("res://scenes/objects/oLightStick.tscn")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.




func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed and event.scancode == KEY_ESCAPE:
			get_tree().quit()
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
#func create_item(Vector2input):
#	var droppedLight = LIGHT_STICK.instance()
#	get_node("/root/Main/Level1/CharacterSpace").add_child(droppedLight)
#	droppedLight.global_position = Vector2input
