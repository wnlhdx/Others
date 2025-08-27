extends Node2D
@onready var off_sprite: Sprite2D = $Off
@onready var on_sprite: Sprite2D = $On

func _ready():
	MelodySystem.motif_recognized.connect(_on_motif)

func _on_motif(name):
	if name == "REVEAL" and GameState.learned_motifs.get("REVEAL", false):
		if GameState.stage_light_on: return
		GameState.stage_light_on = true
		off_sprite.visible = false
		on_sprite.visible = true
		_show_message("灯亮了！")

func _show_message(t: String):
	var main = get_tree().current_scene
	if main.has_node("CanvasLayer/MessageLabel"):
		main.get_node("CanvasLayer/MessageLabel").text = t
