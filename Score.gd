extends Label

var Score = 0

func increase_score():
	self.Score += 1
	self.text = "Score: " + str(Score)

func decrease_score():
	self.Score -= 1
	self.text = "Score: " + str(Score)

func _process(delta):
	if self.Score <= 0:
		self.Score = 0
	if self.Score >= 5:
		$"../WinScreen".visible = true
	if Input.is_action_just_pressed("restart") and $"../WinScreen".visible == true:
		get_tree().reload_current_scene()