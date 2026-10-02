class_name Rootbound
extends Control

@export var label : Label
@export var view : userinterface.Views
@export var user_interface : userinterface

func _ready() -> void:
	update_label_text()
	user_interface.naviagation.connect(on_navigation)

#temporary
func _process(_delta: float) -> void:
	update_label_text()

func shed_blood() -> void:
	Game.ref.data.blood += 1

func update_label_text() -> void:
	label.text = "Blood : %s" %Game.ref.data.blood

func _on_blood_pressed() -> void:
	shed_blood()

func on_navigation(requsted_view : userinterface.Views ) -> void:
	if requsted_view == view :
		visible = true 
		return
	
	visible = false
