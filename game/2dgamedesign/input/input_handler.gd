# input_handler.gd
extends Node

var button_x_command
var button_y_command

@onready var player = get_parent().get_node("Player")

func _ready():
	button_x_command = preload("res://input/commands/jump_command.gd").new(player)
	button_y_command = preload("res://input/commands/attack_command.gd").new(player)

func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		button_x_command.execute()
	elif Input.is_action_just_pressed("ui_cancel"):
		button_y_command.execute()
