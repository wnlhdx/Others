extends Node2D

@onready var tilemap_day = $TileMap_Day
@onready var tilemap_night = $TileMap_Night
@onready var audio_day = $DayBGM
@onready var audio_night = $NightBGM

var is_day = true

func _ready():
	_update_world()

func _process(_delta):
	if Input.is_action_just_pressed("switch_time"):
		is_day = !is_day
		_update_world()

func _update_world():
	tilemap_day.visible = is_day
	tilemap_night.visible = not is_day

	if is_day:
		audio_night.stop()
		audio_day.play()
	else:
		audio_day.stop()
		audio_night.play()
