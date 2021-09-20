extends Area2D
var speed=500
var velocity := Vector2()
var direction=1


func _ready():
	
	pass

func _process(delta):
	
	if direction==-1:
		$AnimatedSprite.flip_h=true
		pass
	velocity.x=speed*delta*direction
	translate(velocity)
	
		
	pass
	
func direction(dir):
	
	direction=dir
	
	
	pass

func _on_VisibilityNotifier2D_screen_exited():
	
	queue_free()
	pass # Replace with function body.


func _on_Area2D_body_entered(body):
	if "enemy" in body.name:
		body.purpul_mana_hit()
	queue_free()
	pass # Replace with function body.
