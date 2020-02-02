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
	if Input.is_action_pressed("p2_right"):
		velocity.x += 1
	if Input.is_action_pressed("p2_left"):
		velocity.x -= 1
	if Input.is_action_pressed("p2_down"):
		velocity.y += 1
	if Input.is_action_pressed("p2_up"):
		velocity.y -= 1
	
	if velocity.x == 0 && velocity.y == 0:
		$PhysicalBody/animatedBrownWalking.animation = "idle"
		$PhysicalBody/animatedBrownWalking.playing = false
	else:
		$PhysicalBody/animatedBrownWalking.animation = "moving"
		$PhysicalBody/animatedBrownWalking.playing = true
	
	if Input.is_action_pressed("p2_interact"):
		state = "INTERACTING"
		
#	if Input.is_action_pressed("p2_drop"):
	if Input.is_action_just_released("p2_drop"):
		state = "DROPPING"
	
	match state:
		"FREE":
			$PhysicalBody.PlayerState_Free(velocity)
		"INTERACTING":
			#$PhysicalBody/InteractRange.PlayerState_Interacting()
			continue
		"DROPPING":
#			var temp = Vector2($PhysicalBody.position.x,$PhysicalBody.position.y)
#			GLOBAL.create_item(temp)
			#if Input.is_action_just_pressed("p2_drop"):
			var droppedLight = GLOBAL.LIGHT_STICK.instance()
			add_child(droppedLight)
			droppedLight.position = Vector2($PhysicalBody.position.x,$PhysicalBody.position.y)
			droppedLight.scale = Vector2(1.5,1.5)
			state = "FREE"
		"DYING":
			continue
			#TODO
		"DEAD":
			continue
			#TODO
			#instance_destroy(self);
		_:
			continue
	
	
	
	
	
	
	
	
	
	
