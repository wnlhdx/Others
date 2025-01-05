extends CharacterBody3D

@export var speed : float = 5.0
@export var mouse_sensitivity : float = 0.2
var movement_velocity : Vector3 = Vector3.ZERO  # 使用新的变量名
var camera : Camera3D
var previous_mouse_position : Vector2

func _ready():
	# 创建 MeshInstance3D 节点作为角色的外观
	var mesh_node = get_node("MeshInstance3D")
	var box_mesh = get_node("CollisionShape3D")
	mesh_node.mesh = box_mesh
	mesh_node.scale = Vector3(2, 2, 2)  # 设置角色的外观大小
	
	# 创建 CollisionShape3D 并为其设置形状
	var collision_shape = get_node("CollisionShape3D")
	
	# 将 CollisionShape3D 添加到 CharacterBody3D 中
	add_child(collision_shape)
	
	# 将 MeshInstance3D 作为角色的外观添加到 CharacterBody3D 中
	add_child(mesh_node)
	
	# 设置位置
	position = Vector3(0, 0, 0)  # 设置角色的位置
	camera = $Camera3D
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED  # 启用鼠标捕捉
	
	previous_mouse_position = get_viewport().get_mouse_position()
  # 初始化鼠标位置

func _process(delta):
	# 玩家控制
	var direction = Vector3.ZERO
	if Input.is_action_pressed("ui_up"):
		direction.z -= 1
	if Input.is_action_pressed("ui_down"):
		direction.z += 1
	if Input.is_action_pressed("ui_left"):
		direction.x -= 1
	if Input.is_action_pressed("ui_right"):
		direction.x += 1
	
	direction = direction.normalized()

	# 获取移动速度
	movement_velocity = direction * speed
	velocity = movement_velocity  # 设置 CharacterBody3D 的 velocity 属性
	move_and_slide()  # 只需调用 move_and_slide()

	# 获取鼠标增量
	var current_mouse_position = get_viewport().get_mouse_position()
	var mouse_delta = Input.get_last_mouse_screen_velocity()  # 获取鼠标的增量
	if mouse_delta != Vector2.ZERO:  # 确保鼠标有移动
		rotate_y(deg_to_rad(-mouse_delta.x * mouse_sensitivity))  # 处理水平旋转
		# 限制垂直旋转角度
		var new_rotation_x = camera.rotation_degrees.x - mouse_delta.y * mouse_sensitivity
		camera.rotation_degrees.x = clamp(new_rotation_x, -80, 80)  # 限制在 -80 到 80 度之间
