class_name userinterface
extends Control


enum Views {
	generator,
	clicker,
}

signal naviagation(view : Views)


func _on_clicker_pressed() -> void:
	naviagation.emit(Views.clicker)


func _on_generator_pressed() -> void:
	naviagation.emit(Views.generator)
