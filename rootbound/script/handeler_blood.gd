class_name blood_handler 
extends Node

static var ref : blood_handler 
var data : Data

func _enter_tree() -> void:
	if not ref:
		ref = self
		return
	
	queue_free()

func blood() -> int:
	return Game.ref.data.blood

func creat_blood(quantitu : int) -> void:
	Game
	
