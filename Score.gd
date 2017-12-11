extends Label

var Score = 0
var scene = 1

func increase_score():
	self.Score += 1
	self.text = "Score: " + str(Score)

func decrease_score():
	self.Score -= 1
	self.text = "Score: " + str(Score)

func _process(delta):
	if self.Score < 0:
		self.Score = 0
	if self.Score >= 5 and scene == 1:
		scene += 1
		get_tree().change_scene("res://Scene2.tscn")
	if self.Score >= 5 and scene == 2:
		scene += 1
		get_tree().change_scene("res://Scene3.tscn")
	if self.Score >= 5 and scene == 3:
		$"../WinScreen".visible = true
	if Input.is_action_just_pressed("restart") and $"../WinScreen".visible == true:
		get_tree().reload_current_scene()