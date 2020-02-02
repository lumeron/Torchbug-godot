extends Area2D


var players_present = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):
		players_present += 1
	
	if players_present >= 2:
		get_tree().quit()
	pass # Replace with function body.


func _on_Area2D_body_exited(body):
	if body.is_in_group("player"):
		players_present -= 1
	pass # Replace with function body.
