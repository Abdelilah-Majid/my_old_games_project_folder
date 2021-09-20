extends KinematicBody2D
var sc2
const UP = Vector2(0,-1)
const GRAVITY = 20
const SPEED = 200
const JAMP_HEIGHT = -600
var motion = Vector2()
var derictions=1
var attack_side=false
var lefted_jamps = 2
signal hit
signal deriction
var hit=preload("res://Area2D.tscn")
var current_enemy = null
var attack_animation=false
var hp=100
var start_color=Color(1.0,1.0,1.0,1.0)
var red_color=Color(1.0,0.0,0.0,1.0)
signal health_changed
var fire_ball_attack=false
var enemy_enters_attack=false
var attacking=false
var enemy_body
signal purpule_mana_hit
var attack_area_entred=false
signal enemy_hited
var purpul_mana_number=0
var is_attacking=false
func _ready():
	var x = get_tree().get_nodes_in_group('enemy')
	for node in x:
		self.connect("enemy_hited",node,"_on_player_hited")
	
	$Sprite2.hide()
	$Sprite.show()
	
	pass

func _physics_process(delta):
	$CanvasLayer2/Control/Label2.text=str(purpul_mana_number)
	if attacking==true:
		_on_attack_body_entered(enemy_body)
		pass
	var hit3=hit.instance()
	sc2=round(scene_instance.sc)
	$CanvasLayer2/Label2.text=str(sc2)
	if hp == 0 : 
		scene_instance.b=1
	if hp<0:
		scene_instance.b=1
	
	
	if $Sprite.flip_h==false:
		derictions=1
	else:
		derictions=-1
	motion.y += GRAVITY
	
	hit3.direction(derictions)
	if Input.is_action_just_pressed("ui_attack"):
		if attack_area_entred==true:
			emit_signal("enemy_hited")
		attacking=true
		emit_signal("hit",derictions)
		attack_animation=true
		$Timer.start()
		$A.play()
		is_attacking=true
	elif Input.is_action_pressed("ui_right")and attack_animation==false and not Input.is_action_pressed("ui_attack") and not Input.is_action_pressed("ui_fire_ball_attack") :
		if sign($Position2D.position.x)==-1:
			$Position2D.position.x=$Position2D.position.x*-1
		$Sprite.flip_h = false
		$Sprite2.flip_h=false
		$Sprite.play("run")
		motion.x = SPEED
		derictions=1
		hit3.direction = derictions
	elif Input.is_action_pressed("ui_left") and attack_animation==false and not Input.is_action_pressed("ui_attack") and not Input.is_action_pressed("ui_fire_ball_attack") :
		if sign($Position2D.position.x)==1:
			$Position2D.position.x=$Position2D.position.x*-1
		$Sprite.flip_h = true
		$Sprite2.flip_h=true
		$Sprite.play("run")
		motion.x = -SPEED
		derictions=-1
		hit3.direction = derictions
	
	
	elif Input.is_action_pressed("ui_up")and attack_animation==false :
		
		$Sprite.play("jump")
	elif attack_animation==true  :
		$Sprite.play("atack")
	
	else :
		motion.x = 0
		
		$Sprite.play("idle")
		
	motion = move_and_slide(motion,UP)
	if is_on_floor():
		lefted_jamps=2
		
	else :
		$Sprite.play("jump")
	
		
	if lefted_jamps>0:
		if Input.is_action_just_pressed("ui_up"):
			lefted_jamps-=1
			motion.y=JAMP_HEIGHT
			
	if Input.is_action_just_pressed("ui_fire_ball_attack") and  purpul_mana_number>0:
		
		purpul_mana_number-=1
		get_parent().add_child(hit3)
		hit3.position=$Position2D.global_position
		$Sprite.hide()
		$Sprite2.show()
		is_attacking=true
	if Input.is_action_just_released("ui_fire_ball_attack"):
		$Sprite.show()
		$Sprite2.hide()
	if Input.is_action_just_released("ui_attack")  or Input.is_action_just_released("ui_fire_ball_attack"):
		is_attacking=false
	
	


func _on_Timer_timeout():
	attack_animation=false
	pass # Replace with function body.


func _on_enemy_attack():
	if not $Tween.is_active():
		$Tween.start()
	$Timer2.start()
	$Tween.interpolate_property(self,"modulate",start_color,red_color,0.25,Tween.TRANS_LINEAR,Tween.EASE_IN)
	hp-=35
	emit_signal("health_changed",hp)
	pass # Replace with function body.

func wizard_attack():
	if not $Tween.is_active():
		$Tween.start()
	$Timer2.start()
	$Tween.interpolate_property(self,"modulate",start_color,red_color,0.25,Tween.TRANS_LINEAR,Tween.EASE_IN)
	hp-=30
	emit_signal("health_changed",hp)
	pass
# Replace with function body.


func _on_Timer2_timeout():
	$Tween.interpolate_property(self,"modulate",red_color,start_color,0.25,Tween.TRANS_LINEAR,Tween.EASE_IN)
	pass # Replace with function body.


func _on_Sprite_animation_finished():
	$Sprite.play("idle")
	fire_ball_attack=false
	pass # Replace with function body.



























func _on_enemy2_attack():
	if not $Tween.is_active():
		$Tween.start()
	$Timer2.start()
	$Tween.interpolate_property(self,"modulate",start_color,red_color,0.25,Tween.TRANS_LINEAR,Tween.EASE_IN)
	hp-=35
	emit_signal("health_changed",hp)
	pass # Replace with function body.


func _on_enemy3_attack():
	if not $Tween.is_active():
		$Tween.start()
	$Timer2.start()
	$Tween.interpolate_property(self,"modulate",start_color,red_color,0.25,Tween.TRANS_LINEAR,Tween.EASE_IN)
	hp-=35
	emit_signal("health_changed",hp)
	pass # Replace with function body.


func _on_enemy4_attack():
	if not $Tween.is_active():
		$Tween.start()
	$Timer2.start()
	$Tween.interpolate_property(self,"modulate",start_color,red_color,0.25,Tween.TRANS_LINEAR,Tween.EASE_IN)
	hp-=35
	emit_signal("health_changed",hp)
	pass # Replace with function body.


func _on_enemy6_attack():
	if not $Tween.is_active():
		$Tween.start()
	$Timer2.start()
	$Tween.interpolate_property(self,"modulate",start_color,red_color,0.25,Tween.TRANS_LINEAR,Tween.EASE_IN)
	hp-=35
	emit_signal("health_changed",hp)
	pass # Replace with function body.


func _on_enemy8_attack():
	if not $Tween.is_active():
		$Tween.start()
	$Timer2.start()
	$Tween.interpolate_property(self,"modulate",start_color,red_color,0.25,Tween.TRANS_LINEAR,Tween.EASE_IN)
	hp-=35
	emit_signal("health_changed",hp)
	pass # Replace with function body.


func _on_enemy9_attack():
	if not $Tween.is_active():
		$Tween.start()
	$Timer2.start()
	$Tween.interpolate_property(self,"modulate",start_color,red_color,0.25,Tween.TRANS_LINEAR,Tween.EASE_IN)
	hp-=35
	emit_signal("health_changed",hp)
	pass # Replace with function body.


func _on_enemy10_attack():
	if not $Tween.is_active():
		$Tween.start()
	$Timer2.start()
	$Tween.interpolate_property(self,"modulate",start_color,red_color,0.25,Tween.TRANS_LINEAR,Tween.EASE_IN)
	hp-=35
	emit_signal("health_changed",hp)
	pass # Replace with function body.


func _on_enemy11_attack():
	if not $Tween.is_active():
		$Tween.start()
	$Timer2.start()
	$Tween.interpolate_property(self,"modulate",start_color,red_color,0.25,Tween.TRANS_LINEAR,Tween.EASE_IN)
	hp-=35
	emit_signal("health_changed",hp)
	pass # Replace with function body.


func _on_enemy12_attack():
	if not $Tween.is_active():
		$Tween.start()
	$Timer2.start()
	$Tween.interpolate_property(self,"modulate",start_color,red_color,0.25,Tween.TRANS_LINEAR,Tween.EASE_IN)
	hp-=35
	emit_signal("health_changed",hp)
	pass # Replace with function body.





func _on_end_line_body_entered(body):
	scene_instance.b=1
	pass # Replace with function body.





func _on_attack_body_entered(body):
	attack_area_entred=true
	pass # Replace with function body.


func _on_attack_body_exited(body):
	attack_area_entred=false
	queue_free()
	pass # Replace with function body.


func _on_body_area_area_entered(area):
	if "purpul_mana" in area.name:
		purpul_mana_number+=1
		area.queue_free()
	pass # Replace with function body.
