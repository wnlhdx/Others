extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	set_process(true)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position += velocity * delta
	# 如果粒子超出了屏幕，就停止发射并移除粒子
	if position.x > get_viewport_rect().size.x or position.y > get_viewport_rect().size.y:
		set_emitting(false)
		queue_free()
	pass
