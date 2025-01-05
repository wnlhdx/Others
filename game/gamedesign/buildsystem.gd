extends Node3D

@export var block_scene : PackedScene  # 存储方块场景
var can_build : bool = true

func _ready():
	pass

func _process(delta):
	if Input.is_action_pressed("ui_accept") and can_build:
		build_block()

# 生成方块
func build_block():
	var mouse_position = get_viewport().get_mouse_position()  # 获取当前视口中的鼠标位置
	var new_block = block_scene.instantiate()  # 创建方块实例
	new_block.global_transform.origin = mouse_position
	add_child(new_block)
