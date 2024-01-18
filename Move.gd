extends CharacterBody2D


var moving = Vector2.ZERO


func _physics_process(delta):
	var x = Input.get_action_strength("ui_right")- Input.get_action_strenght("ui_left")
	
	if moving.x != 0:
		moving.x += x * delta
		
		
		moving.y+= 10*delta
		moving = move_and_slide(moving,Vector2.UP)
		
		
