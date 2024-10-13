extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# 在星云的位置实例化粒子系统
	var nebula_particles = particles.instance()
	add_child(nebula_particles)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func fire_particle():
	# 创建一个新的粒子作为子弹
	var bullet_particle = load("res://Main.tscn").instance()
	add_child(bullet_particle)
	
	# 设置子弹的初始位置（这里假设它在星云的中心）
	bullet_particle.position = position
	
	# 设置子弹的速度和方向（这里简化为向右发射）
	var direction = Vector2(1, 0)
	var speed = 200  # 子弹的速度
	bullet_particle.set("velocity", direction * speed)
	
	# 开始发射子弹
	bullet_particle.set("emitting", true)
