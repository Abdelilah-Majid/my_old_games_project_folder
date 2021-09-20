extends Control
var a=0

func _ready():
	$Timer.start()
	$Sprite2.hide()
	
func _physics_process(delta):
	if a==1:
		$Sprite2.show()
		$Sprite1.hide()
	if a==2:
		scene_instance.goto_scene("res://menu.tscn")


func _on_Timer_timeout():
	a+=1
	
	$Timer.start()
	pass # Replace with function body.
