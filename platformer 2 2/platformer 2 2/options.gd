extends Control




func _process(delta):
	
	$TextureProgress.value=scene_instance.sound_volum+50
	$TextureProgress2.value=scene_instance.music_volum+50
	$AudioStreamPlayer.volume_db=scene_instance.music_volum








func _on_ok_pressed():
	scene_instance.goto_scene("res://menu.tscn")
	pass # Replace with function body.


func _on_ok_mouse_entered():
	$ok.rect_scale=Vector2(1.5,1.5)
	pass # Replace with function body.


func _on_ok_mouse_exited():
	$ok.rect_scale=Vector2(1,1)
	pass # Replace with function body.





func _on_plus_1_pressed():
	scene_instance.sound_volum+=5
	pass # Replace with function body.


func _on_plus_1_mouse_entered():
	$plus_1.rect_scale=Vector2(1.3,1.3)
	pass # Replace with function body.


func _on_plus_1_mouse_exited():
	$plus_1.rect_scale=Vector2(1,1)
	pass # Replace with function body.


func _on_minus_1_pressed():
	scene_instance.sound_volum-=5
	pass # Replace with function body.


func _on_minus_1_mouse_entered():
	$minus_1.rect_scale=Vector2(1.3,1.3)
	pass # Replace with function body.


func _on_minus_1_mouse_exited():
	$minus_1.rect_scale=Vector2(1,1)
	pass # Replace with function body.


func _on_plus_2_pressed():
	scene_instance.music_volum+=5
	pass # Replace with function body.


func _on_plus_2_mouse_entered():
	$plus_2.rect_scale=Vector2(1.3,1.3)
	pass # Replace with function body.


func _on_plus_2_mouse_exited():
	$plus_2.rect_scale=Vector2(1,1)
	pass # Replace with function body.


func _on_minus_2_pressed():
	scene_instance.music_volum-=5
	pass # Replace with function body.


func _on_minus_2_mouse_entered():
	$minus_2.rect_scale=Vector2(1.3,1.3)
	pass # Replace with function body.


func _on_minus_2_mouse_exited():
	$minus_2.rect_scale=Vector2(1,1)
	pass # Replace with function body.
