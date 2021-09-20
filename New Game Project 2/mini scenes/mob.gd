extends RigidBody2D

export var min_speed = 150
export var max_speed = 250
var mob_types = ["walk","swim","fly"]
func _ready():
	$AnimatedSprite.animation= mob_types[randi()% mob_types.size()]
	
	pass 
	

func _on_visibility_screen_exited():
	queue_free()
	pass 

func _on_start_game():
	
	queue_free()
	pass
