extends Node2D

export (PackedScene) var box
var is_right_appers_colliding=false
var is_midl_appers_colliding=false
var is_left_appers_colliding=false
var left_lock_adding=false
var midl_lock_adding=false
var right_lock_adding=false

func _ready():
	pass



func _process(delta):
	var box2=box.instance()
	if is_left_appers_colliding==false and left_lock_adding==false:
		add_child(box2)
		box2.position=$uppers_positions/left.global_position
		$Node2D/Timer.start()
		left_lock_adding=true
	if is_midl_appers_colliding==false and midl_lock_adding==false :
		add_child(box2)
		box2.position=$uppers_positions/midl.global_position
		$Node2D/Timer2.start()
		midl_lock_adding=true
	if is_right_appers_colliding==false and right_lock_adding==false :
		add_child(box2)
		box2.position=$uppers_positions/right.global_position
		$Node2D/Timer3.start()
		right_lock_adding=true
	
	
	
	
	pass


func _on_left2_body_entered(body):
	is_left_appers_colliding=true
	pass # Replace with function body.


func _on_midl2_body_entered(body):
	is_midl_appers_colliding=true
	pass # Replace with function body.


func _on_right2_body_entered(body):
	is_right_appers_colliding=true
	pass # Replace with function body.


func _on_left2_body_exited(body):
	is_left_appers_colliding=false
	pass # Replace with function body.


func _on_midl2_body_exited(body):
	is_midl_appers_colliding=false
	pass # Replace with function body.


func _on_right2_body_exited(body):
	is_right_appers_colliding=false
	pass # Replace with function body.











func _on_Timer_timeout():
	left_lock_adding=false
	pass # Replace with function body.


func _on_Timer2_timeout():
	midl_lock_adding=false
	pass # Replace with function body.


func _on_Timer3_timeout():
	right_lock_adding=false
	pass # Replace with function body.
