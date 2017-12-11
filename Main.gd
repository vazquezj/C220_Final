extends Node

func _on_Timer_timeout():
	var newAnimal = floor(rand_range(0, 4))
	print (newAnimal)
	if newAnimal == 0:
		var newRabbit = $"Rabbit".duplicate()
		self.add_child(newRabbit)
		newRabbit.position.x = rand_range(200, 1080)
		newRabbit.position.y = -100
	if newAnimal == 1:
		var newGiraffe = $"Giraffe".duplicate()
		self.add_child(newGiraffe)
		newGiraffe.position.x = rand_range(200, 1080)
		newGiraffe.position.y = -100
	if newAnimal == 2:
		var newMonkey = $"Monkey".duplicate()
		self.add_child(newMonkey)
		newMonkey.position.x = rand_range(200, 1080)
		newMonkey.position.y = -100
	if newAnimal == 3:
		var newHippo = $"Hippo".duplicate()
		self.add_child(newHippo)
		newHippo.position.x = rand_range(200, 1080)
		newHippo.position.y = -100

func _process(delta):
	if Input.is_action_just_pressed("ui_up"):
		$"UpWall".position = get_viewport().get_mouse_position()
	if Input.is_action_just_pressed("ui_down"):
		$"DownWall".position = get_viewport().get_mouse_position()
	if Input.is_action_just_pressed("ui_left"):
		$"LeftWall".position = get_viewport().get_mouse_position()
	if Input.is_action_just_pressed("ui_right"):
		$"RightWall".position = get_viewport().get_mouse_position()