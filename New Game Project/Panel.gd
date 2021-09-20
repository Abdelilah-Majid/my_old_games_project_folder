extends Panel

export var x = []
func _ready():
	get_node("Button").connect("pressed", self ,"_on_Button_pressed")
	a()
	
	
	
	pass 
var accum = 0
func _process(delta):
	accum += delta
	get_node("Label"). text = str(accum)
	var label1=$Label
	var a = 3
	var b = 8
	var c =a%b
	var label2=$Label2
	label2.text=str(c)
	
	
	
	
	
	
	pass
func _on_Button_pressed(label1):
	
	get_node("Label"). text= "hello!"
	
	
	pass 
func a():
	print("hello")
	yield($Button,"pressed")
	print("world")
	
	pass