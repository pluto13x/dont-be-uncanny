extends Node2D

var chosen_character = ""

func _start_interacting(input_signal):
	if input_signal == "chosen_character":
		$top_layer/socialization_ui.visible = true
		
func _character_chosen(character):
	chosen_character = character

func _ready() -> void:
	Dialogic.signal_event.connect(_character_chosen)
	Dialogic.signal_event.connect(_start_interacting)

func _process(delta: float) -> void:
	
	pass
