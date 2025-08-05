extends CharacterBody2D
const SPEED = 200

func _physics_process(delta):
	var dir = Vector2(
		Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
		Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	).normalized()
	velocity = dir * SPEED
	move_and_slide()
