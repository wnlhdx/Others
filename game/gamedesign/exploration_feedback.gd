# ExplorationFeedback.gd 脚本
extends Area3D

@export var message : String = "你发现了一个新区域！"
var player : CharacterBody3D

func _ready():
	player = get_node("/root/UltimateGame/Player")  # 获取玩家节点

# 当玩家进入区域时触发
func _on_ExplorationArea_body_entered(body):
	if body == player:
		print(message)  # 输出消息
