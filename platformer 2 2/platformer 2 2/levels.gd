extends Control
var rect=Vector2(1,1)

func _ready():
	

	
	pass

func _physics_process(delta):
	$levels.rect_scale=rect
	$AudioStreamPlayer.volume_db=scene_instance.music_volum
	
func _on_levels_pressed():
	scene_instance.goto_scene("res://levels2.tscn")
	pass # Replace with function body.


func _on_levels_mouse_entered():
	rect=Vector2(1.5,1.5)
	pass # Replace with function body.


func _on_levels_mouse_exited():
	rect=Vector2(1,1)
	pass # Replace with function body.


func _on_TextureButton_pressed():
	scene_instance.goto_scene("res://menu.tscn")
	pass # Replace with function body.


func _on_TextureButton_mouse_entered():
	$back.rect_scale=Vector2(1.5,1.5)
	pass # Replace with function body.


func _on_TextureButton_mouse_exited():
	$back.rect_scale=Vector2(1,1)
	pass # Replace with function body.
