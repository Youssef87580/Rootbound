class_name blood_counter
extends Label

#temporary
func _process(delta: float) -> void:
	update_text()

func update_text() -> void:
	text = " blood : %s" %Game.ref.data.blood
