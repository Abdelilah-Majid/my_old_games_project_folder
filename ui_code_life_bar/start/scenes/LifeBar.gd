extends HBoxContainer
var maximum_value=20
func initialize():
	
	pass
	

func _on_GUI_health_changed(health):
	$TextureProgress.value= health
	$Count/Background/Number.text = " %s " % [health]
	
	pass # Replace with function body.
func _ready():
	
	pass