extends Node
func _ready():
	var player_max_health=$Characters/Player.max_health
	$MarginContainer/HBoxContainer/TextureRect/TextureProgress.max_value=player_max_health
	pass


func _on_GUI_red():
	$Timer.start()
	pass # Replace with function body.


func _on_Timer_timeout():
	$Timer.stop()
	pass # Replace with function body.


func _on_Player_health_changed():
	$AnimationPlayer.play("hit")
	pass # Replace with function body.
