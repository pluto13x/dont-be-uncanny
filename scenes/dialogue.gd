extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Dialogic.start("timeline1")
	Dialogic.signal_event.connect(_character_chosen)
	Dialogic.signal_event.connect(_start_interacting)
	
func _start_interacting(input_signal):
	if input_signal == "chosen_character":
		print("start_interacting")
		
func _character_chosen(character):
	match character:
		"barista":
			print("barista")
		"cook":
			print("cook")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
