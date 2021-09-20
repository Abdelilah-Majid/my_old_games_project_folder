extends Control



func _physics_process(delta):
	$AudioStreamPlayer.volume_db=scene_instance.music_volum
func _on_back_pressed():
	scene_instance.goto_scene("res://menu.tscn")
	pass # Replace with function body.


func _on_back_mouse_entered():
	$back.rect_scale=Vector2(1.3,1.3)
	pass # Replace with function body.


func _on_back_mouse_exited():
	$back.rect_scale=Vector2(1,1)
	pass # Replace with function body.
