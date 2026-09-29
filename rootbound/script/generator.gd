class_name auto_blood
extends Control

var blood : int 
@export var button : Button
@export var label : Label
@export var timer : Timer
@export var view : userinterface.Views
@export var user_interface : userinterface

func _ready() -> void:
	update_label_text()
	user_interface.naviagation.connect(on_navigation)

func auto_kill() -> void:
	blood += 1
	update_label_text()

func update_label_text() -> void : 
	label.text = "blood : %s" %blood

func begin_auto_killing() -> void:
	timer.start()
	button.disabled = true
	

func _on_button_pressed() -> void:
	begin_auto_killing()

func _on_timer_timeout() -> void:
	auto_kill()

func on_navigation(requsted_view : userinterface.Views ) -> void:
	if requsted_view == view :
		visible = true 
		return
	
	visible = false
