class_name Rootbound
extends Control

var blood     : int = 0
var moonlight : int = 0
@export var label : Label
@export var view : userinterface.Views
@export var user_interface : userinterface

func _ready() -> void:
	update_label_text()
	user_interface.naviagation.connect(on_navigation)

func shed_blood() -> void:
	blood += 1
	update_label_text()

func update_label_text() -> void:
	label.text = "Blood : %s" %blood

func _on_blood_pressed() -> void:
	shed_blood()

func on_navigation(requsted_view : userinterface.Views ) -> void:
	if requsted_view == view :
		visible = true 
		return
	
	visible = false
