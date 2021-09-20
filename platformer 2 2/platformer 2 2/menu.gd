extends Control
var st=Vector2(1,1)
var op=Vector2(1,1)
var ex=Vector2(1,1)
var cr=Vector2(1,1)

func _ready():
	
	$AudioStreamPlayer.play($"/root/Signals".music)
	pass


func _physics_process(delta):
	$start.rect_scale=st
	$options.rect_scale=op
	$exit.rect_scale=ex
	$cridits.rect_scale=cr
	$AudioStreamPlayer.volume_db=scene_instance.music_volum
func _on_start_pressed():
	scene_instance.goto_scene("res://levels.tscn")

	pass # Replace with function body.


func _on_options_pressed():
	scene_instance.goto_scene("res://options.tscn")
	pass # Replace with function body.


func _on_exit_pressed():
	get_tree().quit()
	pass # Replace with function body.


func _on_start_mouse_entered():
	st=Vector2(1.5,1.5)
	pass # Replace with function body.


func _on_start_mouse_exited():
	st=Vector2(1,1)
	pass # Replace with function body.


func _on_options_mouse_entered():
	op=Vector2(1.5,1.5)
	pass # Replace with function body.


func _on_options_mouse_exited():
	op=Vector2(1,1)
	pass # Replace with function body.


func _on_exit_mouse_entered():
	ex=Vector2(1.5,1.5)
	pass # Replace with function body.


func _on_exit_mouse_exited():
	ex=Vector2(1,1)
	pass # Replace with function body.


func _on_cridits_mouse_entered():
	cr=Vector2(1.5,1.5)
	pass # Replace with function body.


func _on_cridits_mouse_exited():
	cr=Vector2(1,1)
	pass # Replace with function body.


func _on_cridits_pressed():
	scene_instance.goto_scene("res://cridets.tscn")
	pass # Replace with function body.
