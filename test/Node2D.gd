extends Node2D

var a =Color(1,0,0,1)
var b =Color(1,1,1,1)

func _ready():
	Input.action_press("ui_accept")
	var x = get_tree().get_nodes_in_group('root')
	for node in x:
		$Timer.connect("timeout",node,"_t_o")
	pass

func _process(delta):
	if Input.is_action_pressed("ui_accept"):
		$icon.self_modulate=a
	if Input.is_action_just_released("ui_accept"):
		$icon.self_modulate=b
	pass

func _t_o():
	Input.action_release("ui_accept")
