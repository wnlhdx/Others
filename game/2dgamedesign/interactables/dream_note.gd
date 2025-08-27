extends Area2D

var taken := false

func on_player_interact():
	if taken: return
	taken = true
	GameState.learned_motifs["REVEAL"] = true
	_show_message("你学会了旋律：REVEAL")
	queue_free()

func _show_message(t: String):
	var main = get_tree().current_scene
	if main.has_node("CanvasLayer/MessageLabel"):
		main.get_node("CanvasLayer/MessageLabel").text = t
