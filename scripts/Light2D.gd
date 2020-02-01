extends Light2D

export var fuseBox_state = "ON"


func _process(_delta):
	if (fuseBox_state == "ON" && !is_visible()):
		set_visible(false)
	if (fuseBox_state == "OFF" && is_visible()):
		set_visible(true)
		
