extends Node2D



func _ready():
	
	scene_instance.b=0


func _physics_process(delta):
	
	if scene_instance.enemy_death_sound_var==1:
		$ground_enemy_death.play()
		scene_instance.enemy_death_sound_var=0
	
	$A.volume_db=scene_instance.music_volum
	$coins/A.volume_db=scene_instance.sound_volum
	$player/A.volume_db=scene_instance.sound_volum
	$ground_enemy_death.volume_db=scene_instance.sound_volum
	if Input.is_action_just_pressed("ui_cancel"):
		scene_instance.goto_scene("res://levels2.tscn")
	
	pass
