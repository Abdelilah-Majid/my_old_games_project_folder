extends Control
var t1x=3
var t1y=3
var t2x=3
var t2y=3
var t3x=3
var t3y=3
var t4x=3
var t4y=3
var t5x=3
var t5y=3
var t6x=3
var t6y=3
var t7x=3
var t7y=3
var t8x=3
var t8y=3

func _physics_process(delta):
	$v/h/t1.rect_scale.x=t1x
	$v/h/t1.rect_scale.y=t1y
	$v/h2/t8.rect_scale=Vector2(t8x,t8y)
	$v/h2/t7.rect_scale=Vector2(t7x,t7y)
	$v/h2/t6.rect_scale=Vector2(t6x,t6y)
	$v/h2/t5.rect_scale=Vector2(t5x,t5y)
	$v/h/t4.rect_scale=Vector2(t4x,t4y)
	$v/h/t3.rect_scale=Vector2(t3x,t3y)
	$v/h/t2.rect_scale=Vector2(t2x,t2y)
	$AudioStreamPlayer.volume_db=scene_instance.music_volum
	pass

func _on_t1_pressed():
	scene_instance.goto_scene("res://scene_1.tscn")
	pass # Replace with function body.


func _on_t2_pressed():
	
	pass # Replace with function body.


func _on_t3_pressed():
	
	pass # Replace with function body.


func _on_t4_pressed():
	
	pass # Replace with function body.


func _on_t8_pressed():
	
	pass # Replace with function body.


func _on_t7_pressed():
	
	pass # Replace with function body.


func _on_t6_pressed():
	
	pass # Replace with function body.


func _on_t5_pressed():
	
	pass # Replace with function body.


func _on_t1_mouse_entered():
	t1x=4
	t1y=4
	pass # Replace with function body.


func _on_t1_mouse_exited():
	t1x=3
	t1y=3
	pass # Replace with function body.


func _on_t2_mouse_entered():
	t2x=4
	t2y=4
	pass # Replace with function body.


func _on_t2_mouse_exited():
	t2x=3
	t2y=3
	pass # Replace with function body.


func _on_t3_mouse_entered():
	t3x=4
	t3y=4
	pass # Replace with function body.


func _on_t3_mouse_exited():
	t3x=3
	t3y=3
	pass # Replace with function body.


func _on_t4_mouse_entered():
	t4x=4
	t4y=4
	pass # Replace with function body.


func _on_t4_mouse_exited():
	t4x=3
	t4y=3
	pass # Replace with function body.


func _on_t8_mouse_entered():
	t8x=4
	t8y=4
	pass # Replace with function body.


func _on_t8_mouse_exited():
	t8x=3
	t8y=3
	pass # Replace with function body.


func _on_t7_mouse_entered():
	t7x=4
	t7y=4
	pass # Replace with function body.


func _on_t7_mouse_exited():
	t7x=3
	t7y=3
	pass # Replace with function body.


func _on_t6_mouse_entered():
	t6x=4
	t6y=4
	pass # Replace with function body.


func _on_t6_mouse_exited():
	t6x=3
	t6y=3
	pass # Replace with function body.


func _on_t5_mouse_entered():
	t5x=4
	t5y=4
	pass # Replace with function body.


func _on_t5_mouse_exited():
	t5x=3
	t5y=3
	pass # Replace with function body.


func _on_back_pressed():
	scene_instance.goto_scene("res://levels.tscn")
	pass # Replace with function body.


func _on_back_mouse_entered():
	$back.rect_scale=Vector2(1.5,1.5)
	pass # Replace with function body.


func _on_back_mouse_exited():
	$back.rect_scale=Vector2(1,1)
	pass # Replace with function body.
