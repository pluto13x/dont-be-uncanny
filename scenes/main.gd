extends Node2D

func _start_interacting(input_signal):
	if input_signal == "chosen_character":
		$top_layer/socialization_ui.visible = true
		

func _ready() -> void:
	Dialogic.signal_event.connect(_start_interacting)

func _process(delta: float) -> void:
	print(Global.chosen_character)
	pass
