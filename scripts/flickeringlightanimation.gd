extends AnimationPlayer

export var fuseBox_state = "ON"

var counter = 3.000
var timemax = 5.000

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	timemax = randi()%15 + 5

func _physics_process(delta):
	counter += delta
	if (counter > timemax):
		play("flickering_lights")
		counter = randi()%20
		counter = 0.000
