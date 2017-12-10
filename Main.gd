extends Node

func _on_RabbitTimer_timeout():
	var newRabbit = $"Rabbit".duplicate()
	self.add_child(newRabbit)
	newRabbit.position.x = rand_range(450, 1470)
	newRabbit.position.y = -100

func _on_GiraffeTimer_timeout():
	var newGiraffe = $"Giraffe".duplicate()
	self.add_child(newGiraffe)
	newGiraffe.position.x = rand_range(450, 1470)
	newGiraffe.position.y = -100

func _process(delta):
	if Input.is_action_just_pressed("ui_up"):
		var newUpWall = $"UpWall".duplicate()
		self.add_child(newUpWall)
		newUpWall.position = get_viewport().get_mouse_position()
	if Input.is_action_just_pressed("ui_down"):
		var newDownWall = $"DownWall".duplicate()
		self.add_child(newDownWall)
		newDownWall.position = get_viewport().get_mouse_position()
	if Input.is_action_just_pressed("ui_left"):
		var newLeftWall = $"LeftWall".duplicate()
		self.add_child(newLeftWall)
		newLeftWall.position = get_viewport().get_mouse_position()
	if Input.is_action_just_pressed("ui_right"):
		var newRightWall = $"RightWall".duplicate()
		self.add_child(newRightWall)
		newRightWall.position = get_viewport().get_mouse_position()