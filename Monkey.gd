extends Area2D

var monkeyUpdate = true
var monkeyUp = false
var monkeyDown = false
var monkeyLeft = false
var monkeyRight = false

func _process(delta):
	if monkeyUpdate == true:
		self.position.y += 2
	if monkeyUp == true:
		self.position.y -= 2
	if monkeyDown == true:
		self.position.y += 2
	if monkeyLeft == true:
		self.position.x -= 2
	if monkeyRight == true:
		self.position.x += 2

func _on_Monkey_area_entered( area ):
	monkeyUpdate = false
	if area.is_in_group("Up"):
		monkeyUp = true
		monkeyDown = false
		monkeyLeft = false
		monkeyRight = false
	if area.is_in_group("Down"):
		monkeyDown = true
		monkeyUp = false
		monkeyLeft = false
		monkeyRight = false
	if area.is_in_group("Left"):
		monkeyLeft = true
		monkeyUp = false
		monkeyDown = false
		monkeyRight = false
	if area.is_in_group("Right"):
		monkeyRight = true
		monkeyUp = false
		monkeyDown = false
		monkeyLeft = false
	if area.is_in_group("MonkeyBin"):
		self.queue_free()
		$"../ScoreLabel".increase_score()
	if area.is_in_group("RabbitBin"):
		self.queue_free()
		$"../ScoreLabel".decrease_score()
	if area.is_in_group("GiraffeBin"):
		self.queue_free()
		$"../ScoreLabel".decrease_score()
	if area.is_in_group("HippoBin"):
		self.queue_free()
		$"../ScoreLabel".decrease_score()