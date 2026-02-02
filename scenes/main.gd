extends Node2D

signal socializing_start

func _start_or_stop_interacting(_input_signal):
	var ui_visible = $top_layer/socialization_ui.visible
	if ui_visible:
		$top_layer/socialization_ui.visible = false
	else:
		$top_layer/socialization_ui.visible = true
		socializing_start.emit()
		

func _ready() -> void:
	Dialogic.signal_event.connect(_start_or_stop_interacting)

func _process(_delta: float) -> void:
	pass
