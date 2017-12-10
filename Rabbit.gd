extends Area2D

var rabbitUpdate = true
var rabbitUp = false
var rabbitDown = false
var rabbitLeft = false
var rabbitRight = false

func _process(delta):
	if rabbitUpdate == true:
		self.position.y += 2
	if rabbitUp == true:
		self.position.y -= 2
	if rabbitDown == true:
		self.position.y += 2
	if rabbitLeft == true:
		self.position.x -= 2
	if rabbitRight == true:
		self.position.x += 2

func _on_Rabbit_area_entered( area ):
	rabbitUpdate = false
	if area.is_in_group("Up"):
		rabbitUp = true
		rabbitDown = false
		rabbitLeft = false
		rabbitRight = false
	if area.is_in_group("Down"):
		rabbitDown = true
		rabbitUp = false
		rabbitLeft = false
		rabbitRight = false
	if area.is_in_group("Left"):
		rabbitLeft = true
		rabbitUp = false
		rabbitDown = false
		rabbitRight = false
	if area.is_in_group("Right"):
		rabbitRight = true
		rabbitUp = false
		rabbitDown = false
		rabbitLeft = false
	if area.is_in_group("RabbitBin"):
		self.queue_free()
		$"../ScoreLabel".increase_score()
	if area.is_in_group("GiraffeBin"):
		self.queue_free()
		$"../ScoreLabel".decrease_score()
	if area.is_in_group("MonkeyBin"):
		self.queue_free()
		$"../ScoreLabel".decrease_score()
	if area.is_in_group("HippoBin"):
		self.queue_free()
		$"../ScoreLabel".decrease_score()