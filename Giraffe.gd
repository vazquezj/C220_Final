extends Area2D

var giraffeUpdate = true
var giraffeUp = false
var giraffeDown = false
var giraffeLeft = false
var giraffeRight = false

func _process(delta):
	if giraffeUpdate == true:
		self.position.y += 2
	if giraffeUp == true:
		self.position.y -= 2
	if giraffeDown == true:
		self.position.y += 2
	if giraffeLeft == true:
		self.position.x -= 2
	if giraffeRight == true:
		self.position.x += 2

func _on_Giraffe_area_entered( area ):
	giraffeUpdate = false
	if area.is_in_group("Up"):
		giraffeUp = true
		giraffeDown = false
		giraffeLeft = false
		giraffeRight = false
	if area.is_in_group("Down"):
		giraffeDown = true
		giraffeUp = false
		giraffeLeft = false
		giraffeRight = false
	if area.is_in_group("Left"):
		giraffeLeft = true
		giraffeUp = false
		giraffeDown = false
		giraffeRight = false
	if area.is_in_group("Right"):
		giraffeRight = true
		giraffeUp = false
		giraffeDown = false
		giraffeLeft = false
	if area.is_in_group("GiraffeBin"):
		self.queue_free()
		$"../ScoreLabel".increase_score()
	if area.is_in_group("RabbitBin"):
		self.queue_free()
		$"../ScoreLabel".decrease_score()
	if area.is_in_group("MonkeyBin"):
		self.queue_free()
		$"../ScoreLabel".decrease_score()
	if area.is_in_group("HippoBin"):
		self.queue_free()
		$"../ScoreLabel".decrease_score()