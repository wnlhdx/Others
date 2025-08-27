extends CharacterBody2D

@export var speed := 200
@onready var interact_area: Area2D = $InteractArea

func _physics_process(_delta):
	var dir = Vector2(
		Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
		Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	).normalized()
	velocity = dir * speed
	move_and_slide()

	# 演奏音符输入
	if Input.is_action_just_pressed("note_c"):
		MelodySystem.play_note("C")
	if Input.is_action_just_pressed("note_d"):
		MelodySystem.play_note("D")
	if Input.is_action_just_pressed("note_e"):
		MelodySystem.play_note("E")
	if Input.is_action_just_pressed("note_f"):
		MelodySystem.play_note("F")

	# 交互键
	if Input.is_action_just_pressed("interact"):
		_try_interact()

func _try_interact():
	# 找到交互范围内的可交互对象：规则=有 on_player_interact() 方法
	var areas = interact_area.get_overlapping_areas()
	for a in areas:
		if a.has_method("on_player_interact"):
			a.on_player_interact()
			return
	# 也兼容直接交互到父节点（某些物件脚本挂在父节点）
	for a in areas:
		if a.get_parent() and a.get_parent().has_method("on_player_interact"):
			a.get_parent().on_player_interact()
			return
