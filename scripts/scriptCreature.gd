extends Node2D

var angular_speed = 0
var directional_speed_1 = 0
var directional_speed_2 = 0
var forward = Vector2()


func _ready():
	randomize()
	# Create a timer to make the node change directions regularly
	_change_direction()


func _physics_process(delta):
	forward = Vector2(directional_speed_1, directional_speed_2)
	# Rotate
#	rotation *= angular_speed * delta
	# Move
#	forward = angle_to_direction(rotation)
	if forward.x == 0 && forward.y == 0:
		$PhysicalBody/animatedCreature.animation = "idle"
		$PhysicalBody/animatedCreature.stop()
		$PhysicalBody/AudioStreamPlayer2D.set_stream_paused(true)
		_change_direction()
	else:
		$PhysicalBody/animatedCreature.animation = "moving"
		$PhysicalBody/animatedCreature.play()
		$PhysicalBody/AudioStreamPlayer2D.set_stream_paused(false)
	$PhysicalBody.CreatureState_roaming(forward) 


func _change_direction():
	directional_speed_1 = int(round(randi()%3))
	directional_speed_1 -= 1
	directional_speed_2 = int(round(randi()%3))
	directional_speed_2 -= 1


static func angle_to_direction(angle):
	return Vector2(int(round(cos(angle))), int(round(-sin(angle))))
