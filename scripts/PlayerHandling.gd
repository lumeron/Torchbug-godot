extends KinematicBody2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func PlayerState_Free(velocity):
	# movement calculations
#	var hrzSpd = (key_right - key_left)
#	var vrtSpd = (key_down - key_up)
	var directionCheck = String(velocity.x)+","+String(velocity.y)
	
	match directionCheck:
		"-1,-1":
			self.rotation_degrees = -45;
		"-1,0":
			self.rotation_degrees = -90;
		"1,1":
			self.rotation_degrees = 135;
		"0,1":
			self.rotation_degrees = 180;
		"1,0":
			self.rotation_degrees = 90;
		"0,-1":
			self.rotation_degrees = 0;
		"1,-1":
			self.rotation_degrees = 45;
		"-1,1":
			self.rotation_degrees = -135;
		_:
			continue
	
	velocity.x *= GLOBAL.game_movement_speed_factor
	velocity.y *= GLOBAL.game_movement_speed_factor
	velocity = move_and_collide(velocity)
	
	
	
	
	
	
	
	
