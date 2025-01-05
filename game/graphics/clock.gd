extends Control

# 时针、分针、秒针节点
@export var hour_hand: Line2D
@export var minute_hand: Line2D
@export var second_hand: Line2D




func _ready():
	self.size = Vector2(100, 100)
	# 设置定时器，每秒更新一次
	set_process(true)

# 自定义平移变换函数
func translate_transform(input: Vector2, translate: Vector2) -> Vector2:
	input.x += translate.x
	input.y += translate.y
	return input

# 自定义缩放变换函数
func scale_transform(input: Vector2, scale: Vector2) -> Vector2:
	input.x *= scale.x
	input.y *= scale.y
	return input

# 绘制方法
func _draw():
	var light_gray = Color(0.8, 0.8, 0.8, 1.0)
	
	var translation = Vector2(0, 0)
	var scaletransfrom = Vector2(1, 1)
		# 应用平移变换
	translation =translate_transform(translation,Vector2(48,48))
	
	# 应用缩放变换
	scaletransfrom =scale_transform(scaletransfrom,Vector2(4.8,4.8))
	

	print(translation,scaletransfrom)
	# 绘制变换后的圆
	draw_circle(translation, 20.0 /2* scaletransfrom.x, light_gray)



#func _process(delta):
	## 获取当前时间
	#var time = Time.get_time_dict_from_system()
	#var hour = time.hour % 12
	#var minute = time.minute
	#var second = time.second
#
	## 计算指针角度
	#var hour_angle = deg_to_rad(-hour * 30 - minute * 0.5)
	#var minute_angle = deg_to_rad(-minute * 6)
	#var second_angle = deg_to_rad(-second * 6)
		   ## 每秒6°
#
	## 设置指针角度
	#hour_hand.rotation = hour_angle
	#minute_hand.rotation = minute_angle
	#second_hand.rotation = second_angle
