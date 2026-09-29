class_name Rootbound
extends Control

var blood     : int = 0
var moonlight : int = 0
@export var label : Label

func _ready() -> void:
	update_label_text()

func shed_blood() -> void:
	blood += 1
	update_label_text()

func update_label_text() -> void:
	label.text = "Blood : %s" %blood

func _on_blood_pressed() -> void:
	shed_blood()
