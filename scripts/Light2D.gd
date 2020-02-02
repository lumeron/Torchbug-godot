extends Light2D

export var fuseBox_state = "ON"

var counter = 3.000
var timemax = 5.000
var temp = 0.5

func _ready():
	randomize()
	timemax = randi()%15 + 5

func _physics_process(delta):
	counter += delta
	flicker()
	if (counter > timemax):
		counter = randi()%20
		counter = 0.000
#	if (fuseBox_state == "ON" && !is_visible()):
#		set_visible(false)
#	if (fuseBox_state == "OFF" && is_visible()):
#		set_visible(true)
#
func flicker():
	if (counter < 2 && energy > 0.4):
		temp = energy
		energy = 0.3
	if (counter > 2.05 && energy < 0.5):
		energy = temp
