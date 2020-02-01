extends KinematicBody2D


func CreatureState_roaming(velocity):
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
#
#	velocity.x *= GLOBAL.game_movement_speed_factor
#	velocity.y *= GLOBAL.game_movement_speed_factor
	var collision = move_and_collide(velocity)
	if collision:
		get_parent()._change_direction()
