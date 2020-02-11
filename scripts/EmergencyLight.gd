extends Node2D

export var pulsingLight = false


func _on_AnimationPlayer_ready():
	$PhysicalBody/Light2D/AnimationPlayer.play("pulsing_emergency_light")
