extends Node
var sc = 0
var coin=0
var enemy_death_sound_var=0
var current_scene = null
var sound_volum=0
var music_volum=0
var b =0
func _ready():
	var root=get_tree().get_root()
	current_scene=root.get_child(root.get_child_count()-1)
	pass
func goto_scene(path):
	call_deferred("_deferred_goto_scene",path)
	pass
func _deferred_goto_scene(path):
	current_scene.queue_free()
	var s=ResourceLoader.load(path)
	current_scene=s.instance()
	get_tree().get_root().add_child(current_scene)
	get_tree().set_current_scene(current_scene)
	pass
	
	
	
func _process(delta):
	
	if sound_volum<-50:
		
		sound_volum=-50
	
	if music_volum<-50:
		
		music_volum=-50
	if sound_volum>0:
		
		sound_volum=0
	
	if music_volum>0:
		
		music_volum=0