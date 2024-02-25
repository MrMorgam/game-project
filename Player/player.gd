extends CharacterBody2D


const SPEED = 500.0

func _physics_process(delta):
	var direction_x = Input.get_axis("ui_left", "ui_right")
	var direction_y = Input.get_axis("ui_up", "ui_down")
	
	if direction_x:
		velocity.x = direction_x * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	if direction_y:
		velocity.y = direction_y * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0 , SPEED)

	move_and_slide()


func _on_button_pressed():
	get_tree().change_scene_to_file("res://Main Menu/main_menu.tscn")
