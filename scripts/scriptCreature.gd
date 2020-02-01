extends Node2D

var angular_speed = 0
var forward = Vector2()


func _ready():
	randomize()
	# Create a timer to make the node change directions regularly
	_change_direction()


func _physics_process(delta):
	forward = Vector2()
	# Rotate
	rotation *= angular_speed * delta
	# Move
	forward = angle_to_direction(rotation)
	if forward.x == 0 && forward.y == 0:
		$PhysicalBody/animatedCreature.animation = "idle"
		$PhysicalBody/animatedCreature.stop()
	else:
		$PhysicalBody/animatedCreature.animation = "moving"
		$PhysicalBody/animatedCreature.play()
	$PhysicalBody.CreatureState_roaming(forward) 


func _change_direction():
	angular_speed = randi()%360 - 180


static func angle_to_direction(angle):
	return Vector2(int(round(cos(angle))), int(round(-sin(angle))))
