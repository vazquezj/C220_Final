extends Area2D

var hippoUpdate = true
var hippoUp = false
var hippoDown = false
var hippoLeft = false
var hippoRight = false

func _process(delta):
	if hippoUpdate == true:
		self.position.y += 2
	if hippoUp == true:
		self.position.y -= 2
	if hippoDown == true:
		self.position.y += 2
	if hippoLeft == true:
		self.position.x -= 2
	if hippoRight == true:
		self.position.x += 2

func _on_Hippo_area_entered( area ):
	hippoUpdate = false
	if area.is_in_group("Up"):
		hippoUp = true
		hippoDown = false
		hippoLeft = false
		hippoRight = false
	if area.is_in_group("Down"):
		hippoDown = true
		hippoUp = false
		hippoLeft = false
		hippoRight = false
	if area.is_in_group("Left"):
		hippoLeft = true
		hippoUp = false
		hippoDown = false
		hippoRight = false
	if area.is_in_group("Right"):
		hippoRight = true
		hippoUp = false
		hippoDown = false
		hippoLeft = false
	if area.is_in_group("HippoBin"):
		self.queue_free()
		$"../ScoreLabel".increase_score()
	if area.is_in_group("RabbitBin"):
		self.queue_free()
		$"../ScoreLabel".decrease_score()
	if area.is_in_group("MonkeyBin"):
		self.queue_free()
		$"../ScoreLabel".decrease_score()
	if area.is_in_group("GiraffeBin"):
		self.queue_free()
		$"../ScoreLabel".decrease_score()