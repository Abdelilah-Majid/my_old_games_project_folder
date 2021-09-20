extends Node
var music=0
var wizard_mana_exist=1
signal enemy_hit
func enemy_hit(enemy):
	emit_signal("enemy_hit", enemy)
	

