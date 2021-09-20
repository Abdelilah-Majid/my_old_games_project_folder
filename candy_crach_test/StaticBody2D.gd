extends KinematicBody2D
var gravity=50
var speed=100
var typs=["red","green","blue"]
var typ
var velocity=Vector2()
var up =Vector2(0,-1)

func _ready():
	randomize()
	typ=typs[randi()%typs.size()]
	if typ=="red":
		modulate=Color(1,0,0,1)
	elif typ=="green":
		modulate=Color(0,1,0,1)
	elif typ=="blue":
		modulate=Color(0,0,1,1)
	print(typ)
	pass 


func _process(delta):
	velocity=move_and_slide(velocity,up)
	velocity.y=gravity
	
	
	
	
	
	
	pass