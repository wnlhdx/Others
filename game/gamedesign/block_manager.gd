extends Node

@export var block_scene: PackedScene
var placed_blocks = []

func place_block(position: Vector3):
	var block = block_scene.instantiate()
	block.position = position
	get_parent().add_child(block)
	placed_blocks.append(block)

func destroy_block(block):
	placed_blocks.erase(block)
	block.queue_free()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
