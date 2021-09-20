extends KinematicBody2D
const GRAVITY = 20
const SPEED = 100
const UP = Vector2(0,-1)
var velocity = Vector2()
var direction = 1
export var health = 50
var enter_attack=false
var enter_entred = false
var hit_speed = 1000
var hited=false
signal hited_signal
signal attack
var animation_timer=false
export var start_color=Color(1.0,1.0,1.0,1.0)
var red_color=Color(1.0,0.0,0.0,1.0)
var dr
func _ready():
	pass # Replace with function body.

func _process(delta):
	
	if health==0:
		scene_instance.enemy_death_sound_var=1
		scene_instance.sc+=50
		queue_free()
		
	if health<0:
		scene_instance.enemy_death_sound_var=1
		scene_instance.sc+=50
		queue_free()
	
	
	if animation_timer==true:
		$AnimatedSprite.play("attack")
	if hited==false:
		velocity.x = SPEED * direction
		velocity.y += GRAVITY
	if animation_timer==false:
		
		$AnimatedSprite.play("walk")
	velocity = move_and_slide(velocity,UP)
	if enter_entred == false:
		
		if is_on_wall():
			direction *=-1
			$RayCast2D.position.x*=-1
	if $RayCast2D.is_colliding()==false:
		direction*=-1
		$RayCast2D.position.x*=-1
	if hited==true:
		velocity.x=hit_speed*dr
	if health <= 0:
		pass
	
	if direction == 1 :
		$AnimatedSprite.flip_h = false
	else :
		$AnimatedSprite.flip_h = true

func _on_player_hit(derictions):
	dr=derictions
	if not $Tween.is_active():
		$Tween.start()
	if enter_attack==true:
		health-=10
		$Timer3.start()
		$Tween.interpolate_property(self,"modulate",start_color,red_color,0.25,Tween.TRANS_LINEAR,Tween.EASE_IN)
		hited=true
	pass # Replace with function body.


func _on_attack_body_shape_entered(body_id, enemy, body_shape, area_shape):
	if enemy.get_instance_id() != self.get_instance_id():
		return
	if enemy.name==name:
		enter_attack=true
		
	
	pass # Replace with function body.

func _on_entred_body_shape_entered(body_id, enemy, body_shape, area_shape):
	if enemy.name==name:
		enter_entred=true
		attack()
	pass # Replace with function body.


func _on_entred_body_shape_exited(body_id, enemy, body_shape, area_shape):
	
	enter_entred=false
	pass # Replace with function body.


func _on_attack_body_shape_exited(body_id, enemy, body_shape, area_shape):
	
	enter_attack=false
	hited=false
	pass # Replace with function body.

func _on_Timer_timeout():
	animation_timer=false
	$AnimatedSprite.play("walk")
	if enter_entred==true:
		attack()
		
	pass # Replace with function body.
func attack():
	
	
	$Timer2.start()
	$Timer.start()
	animation_timer=true
	
	
	pass

func _on_Timer2_timeout():
	emit_signal("attack")
	pass 


func _on_Timer3_timeout():
	$Tween.interpolate_property(self,"modulate",red_color,start_color,0.25,Tween.TRANS_LINEAR,Tween.EASE_IN)
	pass # Replace with function body.

func hited():
	health-=10
	pass
func _on_player_hited():
	
	pass
