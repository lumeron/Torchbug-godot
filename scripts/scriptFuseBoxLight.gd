extends Node2D

export var fuseBoxStartsOn = false



func _on_AnimationPlayer_ready():
	$PhysicalBody/Light2D/AnimationPlayer.fuseBox_state = fuseBoxStartsOn
	if (fuseBoxStartsOn == true):
		$PhysicalBody/Light2D.energy = 1
	
