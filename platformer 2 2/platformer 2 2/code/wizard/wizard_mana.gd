extends Area2D

var velocity=Vector2()
var dr=-1


func _process(delta):
	
	velocity.x=500*delta*dr
	translate(velocity)
	
	if dr==1:
		$AnimatedSprite.flip_h=true
	else:
		$AnimatedSprite.flip_h=false






func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	pass # Replace with function body.


func _on_red_mana_body_entered(body):
	if body.name==("player"):
		body.wizard_attack()
		
		pass
		queue_free() 
		
	pass # Replace with function body.


func _on_red_mana_area_entered(body):
	
	pass # Replace with function body.
