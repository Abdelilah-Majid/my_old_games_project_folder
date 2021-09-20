extends Area2D
var speed=1
var velocity=Vector2()
var hp0=2
var hp1=2
var x=[1,2,3]
var a= Color(1,0,0,1)
func _process(delta):
	print(x[1])
	velocity.x+=speed
	position+=velocity*delta
	if hp0==0 and self.name==("Area"):
		self.queue_free()
	if hp0==0 and self.name==("Area2"):
		self.queue_free()

	pass





func _on_hit_area_entered(area):
	if area.name==("Area"):
		hp0-=1
	if area.name==("Area2"):
		hp0-=1
	x[1]-=1
	
	
	
	pass # Replace with function body.
