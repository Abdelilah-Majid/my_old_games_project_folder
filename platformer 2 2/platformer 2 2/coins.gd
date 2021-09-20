extends Node2D

func _physics_process(delta):
	
	if scene_instance.coin==1:
		$A.play()
		scene_instance.coin=0
	
	pass

func _on_Area2D_body_entered(body):
	
	pass # Replace with function body.
