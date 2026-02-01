extends Node2D

func _start_interacting(input_signal):
	var ui_visible = $top_layer/socialization_ui.visible
	if ui_visible:
		$top_layer/socialization_ui.visible = false
	else:
		$top_layer/socialization_ui.visible = true
		

func _ready() -> void:
	Dialogic.signal_event.connect(_start_interacting)

func _process(delta: float) -> void:
	pass
