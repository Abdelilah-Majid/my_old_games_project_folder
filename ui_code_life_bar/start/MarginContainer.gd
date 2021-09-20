extends MarginContainer
signal health_changed(health)
onready var number_label = $HBoxContainer/MarginContainer/TextureRect/NinePatchRect/Label
onready var bar = $HBoxContainer/TextureRect/TextureProgress
onready var tween = $Tween
onready var animated_health=18
var start_color=Color(1.0,1.0,1.0,1.0)
var end_color=Color(1.0,1.0,1.0,0.0)
var red_color=Color(1.0,0.0,0.0,1.0)
signal red
func _ready():
	
	
	
	pass
func _process(delta):
	var round_value=round(animated_health)
	
	number_label.text=str(round_value)
	bar.value = round_value
	
	pass

func _on_Player_health_changed(health):
	if not tween.is_active():
		tween.start()
	tween.interpolate_property(self,"animated_health",animated_health,health,1,Tween.TRANS_ELASTIC,Tween.EASE_IN)
	$Timer.start()
	tween.interpolate_property(self,"modulate",start_color,red_color,0.25,Tween.TRANS_ELASTIC,Tween.EASE_IN)
	emit_signal("red")
	pass # Replace with function body.


func _on_Player_died():
	
	tween.interpolate_property(self,"modulate",start_color,end_color,3.0,Tween.TRANS_LINEAR,Tween.EASE_IN)
	
	pass # Replace with function body.


func _on_Timer_timeout():
	tween.interpolate_property(self,"modulate",red_color,start_color,0.25,Tween.TRANS_ELASTIC,Tween.EASE_IN)
	pass # Replace with function body.

