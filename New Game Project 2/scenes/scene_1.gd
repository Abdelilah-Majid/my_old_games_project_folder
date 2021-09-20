extends Node2D
export (PackedScene) var Mob
var score

func _ready():
	randomize()
	pass 


func game_over():
	$ScoreTimer.stop()
	$MobTimer.stop()
	$HUD.show_game_over()
	$music.stop()
	$deathsownd.play()
	
	pass 
func new_game():
	score=0
	$player.start($startposition.position)
	$StartTimer.start()
	$HUD.update_score(score)
	$HUD.show_message("get-ready")
	
	$music.play()
	pass


func _on_MobTimer_timeout() :
	$mobpath/mobspawnlocation.set_offset(randi())
	var mob = Mob.instance()
	add_child(mob)
	var direction = $mobpath/mobspawnlocation.rotation+PI/2
	mob.position=$mobpath/mobspawnlocation.position
	direction+= rand_range(-PI/4,PI/4)
	mob.rotation = direction
	mob.linear_velocity=Vector2(rand_range(mob.min_speed,mob.max_speed),0)
	mob.linear_velocity=mob.linear_velocity.rotated(direction)
	$HUD.connect("start_game",mob,"_on_start_game")
	pass 


func _on_ScoreTimer_timeout():
	score +=1
	$HUD.update_score(score)
	pass 


func _on_StartTimer_timeout():
	$ScoreTimer.start()
	$MobTimer.start()
	pass 


func _on_HUD_start_game():
	new_game()
	pass 
