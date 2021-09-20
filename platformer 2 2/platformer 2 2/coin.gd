extends Area2D

var a=0

func _on_Area2D_body_entered(body):
	scene_instance.coin=1
	
	scene_instance.sc+=10
	queue_free()
	pass # Replace with function body.
