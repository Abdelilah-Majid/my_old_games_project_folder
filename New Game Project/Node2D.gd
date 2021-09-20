extends Node2D
export (Color,RGBA) var color
export var s = [1,1,2]
var a = 0
 
var x = [a,1,2]
# Declvarare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.connect("timeout",self,"_on_timer_timeout")
	var i=0
	for i in (3):
		print("hello")
	
	
	pass # Replace with function body.
func _on_timer_timeout() :
	$Sprite.visible = !$Sprite.visible
	
func _process(delta):
	
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



