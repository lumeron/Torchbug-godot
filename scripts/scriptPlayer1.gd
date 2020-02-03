extends Node2D


var hrzSpd = 0
var vrtSpd = 0
var walkSpd = (1 * GLOBAL.game_movement_speed_factor)
var state = "FREE";
var velocity = Vector2()

var key_left
var key_right
var key_up
var key_down
var key_interact
var key_dropitem


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(_delta):
	velocity = Vector2()
	if Input.is_action_pressed("p1_right"):
		velocity.x += 1
	if Input.is_action_pressed("p1_left"):
		velocity.x -= 1
	if Input.is_action_pressed("p1_down"):
		velocity.y += 1
	if Input.is_action_pressed("p1_up"):
		velocity.y -= 1
		
	if velocity.x == 0 && velocity.y == 0:
		$PhysicalBody/animatedGreenWalking.animation = "idle"
		$PhysicalBody/animatedGreenWalking.stop()
		$PhysicalBody/AudioStreamPlayer2D.set_stream_paused(true)
	else:
		$PhysicalBody/animatedGreenWalking.animation = "moving"
		$PhysicalBody/animatedGreenWalking.play()
		$PhysicalBody/AudioStreamPlayer2D.set_stream_paused(false)
	
	if Input.is_action_just_released("p1_interact"):
		state = "INTERACTING"
	if Input.is_action_just_released("p1_drop"):
		state = "DROPPING"
	
	match state:
		"FREE":
			$PhysicalBody.PlayerState_Free(velocity)
		"INTERACTING":
			state = "FREE"
			#TODO
			#PlayerState_Interacting();
		"DROPPING":
			state = "FREE"
			#TODO
			#PlayerState_Interacting();
		"DYING":
			continue
			#TODO
		"DEAD":
			continue
			#TODO
			#instance_destroy(self);
		_:
			state = "FREE"
			continue
	
	
	
	
	
	
	
	
	
	
