extends Area2D

var a=0
var b=0



func _process(delta):
	if scene_instance.b==0:
		$CanvasLayer/Label.hide()
		$CanvasLayer/Label2.hide()
		$CanvasLayer/Sprite.hide()
		$CanvasLayer/TextureButton.hide()
	if scene_instance.b==1:
		$CanvasLayer/Label.show()
		$CanvasLayer/Label2.show()
		$CanvasLayer/Sprite.show()
		$CanvasLayer/TextureButton.show()
	$CanvasLayer/Label2.text=str(scene_instance.sc)


func _on_door_body_entered(body):
	if body.name=="player":
		$Timer.start()
	pass # Replace with function body.


func _on_Timer_timeout():
	$AnimatedSprite.play("2")
	a+=1
	if a==2:
		scene_instance.b=1
	
	else:
		$Timer.start()
	pass # Replace with function body.


func _on_TextureButton_pressed():
	scene_instance.goto_scene("res://levels2.tscn")
	pass # Replace with function body.


func _on_TextureButton_mouse_entered():
	$CanvasLayer/TextureButton.rect_scale=Vector2(1.3,1.3)
	pass # Replace with function body.


func _on_TextureButton_mouse_exited():
	$CanvasLayer/TextureButton.rect_scale=Vector2(1,1)
	pass # Replace with function body.
