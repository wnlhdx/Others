extends Node2D

@onready var tilemap_day = $TileMap_Day
@onready var tilemap_night = $TileMap_Night
@onready var audio_day = $DayBGM
@onready var audio_night = $NightBGM
@onready var msg_label = $CanvasLayer/MessageLabel

func _ready():
	_update_world()
	msg_label.text = "梦境：去找乐谱碎片（E）"

func _process(_delta):
	if Input.is_action_just_pressed("switch_time"):
		GameState.in_dream = !GameState.in_dream
		_update_world()

func _update_world():
	var is_day = GameState.in_dream
	tilemap_day.visible = is_day
	tilemap_night.visible = not is_day

	if is_day:
		audio_night.stop()
		audio_day.play()
		msg_label.text = "梦境：去找乐谱碎片（E）"
	else:
		audio_day.stop()
		audio_night.play()
		if GameState.learned_motifs["REVEAL"]:
			msg_label.text = "现实：按 J-K-L 试试（C-E-F）"
		else:
			msg_label.text = "现实：你还没学会旋律"
