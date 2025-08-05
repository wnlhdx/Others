extends CharacterBody3D

const SPEED = 5.0
const JUMP_FORCE = 4.5
const MOUSE_SENSITIVITY = 0.002

@onready var camera = $Camera3D

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _input(event):
	if event is InputEventMouseMotion:
		rotate_y(-event.relative.x * MOUSE_SENSITIVITY)
		camera.rotate_x(-event.relative.y * MOUSE_SENSITIVITY)
		camera.rotation.x = clamp(camera.rotation.x, -PI/2, PI/2)

func _physics_process(delta):
	var input_dir = Input.get_vector("move_left", "move_right", "move_forward", "move_back")
	var direction = (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)

	if is_on_floor() and Input.is_action_just_pressed("jump"):
		velocity.y = JUMP_FORCE

	velocity.y -= 9.8 * delta
	move_and_slide()

@export var block_manager: NodePath
var max_interact_distance = 5.0

func _process(delta):
	if Input.is_action_just_pressed("place_block"):
		var raycast = camera.global_transform * Vector3(0, 0, -1) * max_interact_distance
		var target_pos = camera.global_position + raycast
		# 确保 block_manager 节点存在
		var manager = get_node(block_manager)
		if manager:
			manager.place_block(target_pos.snapped(Vector3.ONE))
		else:
			push_error("Player: BlockManager node not found!")

	if Input.is_action_just_pressed("destroy_block"):
		var ray = PhysicsRayQueryParameters3D.create(camera.global_position, camera.global_position + camera.global_transform.basis.z * -max_interact_distance)
		var result = get_world_3d().direct_space_state.intersect_ray(ray)
		if result:
			if "block" in result.collider.name.to_lower():
				get_node(block_manager).destroy_block(result.collider)
