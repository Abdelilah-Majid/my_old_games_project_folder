extends CanvasLayer
signal start_game



func _ready():
	pass 
func show_message(text):
	$messageLabel.text=text
	$messageLabel.show()
	$messageTimer.start()
	pass
func show_game_over():
	show_message("game over")
	yield($ messageTimer,"timeout")
	$messageLabel.text="dodge the \n creeps!"
	$messageLabel.show()
	yield(get_tree().create_timer(1),"timeout")
	$startButton.show()
	pass

func update_score(score):
	$scoreLabel.text=str(score)
	pass

func _on_messageTimer_timeout():
	$messageLabel.hide()
	pass 
	
func _on_startButton_pressed():
	$startButton.hide()
	emit_signal("start_game")
	pass 
