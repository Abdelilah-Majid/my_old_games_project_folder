extends KinematicBody2D
const UP=Vector2(0,-1)
var dr=-1
var velocity=Vector2()
var wall_colligen_wait=1
var red_mana=preload("res://demo_scence/wizard/wizard_mana.tscn")
var left_entred=0
var right_entred=0
var ball_wait=0
var health=30
var choting_wait=false
var choting_wait_wait=false
func _ready():
	$choting_distance_left.enabled=true
	$choting_distance_right.enabled=false
	$Area_left/CollisionShape2D.disabled=false
	$Area_right/CollisionShape2D.disabled=true
	
	pass

func _process(delta):
	if health<=0:
		queue_free()
	var red_mana_2=red_mana.instance()
	red_mana_2.dr=dr
	velocity=move_and_slide(velocity,UP)
	velocity.x=100*dr
	velocity.y=50
	if wall_colligen_wait==1:
		if is_on_wall():
			$mana_position.position.x*=-1
			dr*=-1
			$RayCast2D.position.x*=-1
			
			if dr==1:
				red_mana_2.dr=dr
				$AnimatedSprite.flip_h=true
				$choting_distance_left.enabled=false
				$choting_distance_right.enabled=true
				$Area_left/CollisionShape2D.disabled=true
				$Area_right/CollisionShape2D.disabled=false
			else:
				red_mana_2.dr=dr
				$AnimatedSprite.flip_h=false
				$choting_distance_left.enabled=true
				$choting_distance_right.enabled=false
				$Area_left/CollisionShape2D.disabled=false
				$Area_right/CollisionShape2D.disabled=true
			$wall_wait.start()
			wall_colligen_wait=0
	if $RayCast2D.is_colliding()==false:
		$mana_position.position.x*=-1
		dr*=-1
		$RayCast2D.position.x*=-1
		if dr==1:
			red_mana_2.dr=dr
			$AnimatedSprite.flip_h=true
			$choting_distance_left.enabled=false
			$choting_distance_right.enabled=true
			$Area_left/CollisionShape2D.disabled=true
			$Area_right/CollisionShape2D.disabled=false
		
		
		else:
			red_mana_2.dr=dr
			$AnimatedSprite.flip_h=false
			$choting_distance_left.enabled=true
			$choting_distance_right.enabled=false
			$Area_left/CollisionShape2D.disabled=false
			$Area_right/CollisionShape2D.disabled=true
	
	if $choting_distance_left.is_colliding()==true:
		if left_entred==1:
			if ball_wait==0:
				get_parent().add_child(red_mana_2)
				
				red_mana_2.position=$mana_position.global_position
				$ball_wait.start()
				ball_wait=1
		pass
	if $choting_distance_right.is_colliding()==true:
		if right_entred==1:
			if ball_wait==0:
				get_parent().add_child(red_mana_2)
				red_mana_2.position=$mana_position.global_position
				$ball_wait.start()
				ball_wait=1
		pass
	
	
	if ball_wait==1 :
		$AnimatedSprite.play("walk")
		
	elif ball_wait==0:
		
		$AnimatedSprite.play("attack")
	
	
	
	
	
	pass


func _on_wall_wait_timeout():
	wall_colligen_wait=1
	pass # Replace with function body.


func _on_Area_left_body_entered(body):
	if body.name==("player"):
		left_entred=1
	pass # Replace with function body.


func _on_Area_left_body_exited(body):
	if body.name==("player"):
		left_entred=0
	pass # Replace with function body.


func _on_Area_right_body_entered(body):
	if body.name==("player"):
		right_entred=1
	pass # Replace with function body.


func _on_Area_right_body_exited(body):
	if body.name==("player"):
		right_entred=0
	pass # Replace with function body.


func _on_ball_wait_timeout():
	ball_wait=0
	pass # Replace with function body.




func purpul_mana_hit():
	
	health-=10



func _on_choting_wait_timeout():
	choting_wait=true
	pass # Replace with function body.

func _on_player_hited():
	health-=10
	

