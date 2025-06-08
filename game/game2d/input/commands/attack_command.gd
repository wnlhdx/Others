# attack_command.gd
extends Command

var player

func _init(_player):
	player = _player

func execute():
	player.attack()
