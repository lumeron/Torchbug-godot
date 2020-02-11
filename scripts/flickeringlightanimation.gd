extends AnimationPlayer

var fuseBox_state = false

var counter = 0.000
var timemax = 5.000

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()

func _physics_process(delta):
	if (fuseBox_state):
		counter += delta
		if (counter > timemax):
			randomFlicker(counter)
			timemax = randi()%18 + 2
			counter = 0.000


func randomFlicker(passedCounter):
	if (passedCounter > 16):
		play("flickering_lights3")
	elif (counter > 8):
		play("flickering_lights2")
	else:
		play("flickering_lights")
