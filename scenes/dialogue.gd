extends Node2D

func _ready() -> void:
	Dialogic.Choices.hotkey_behaviour = 1
	Dialogic.start("chosewho")
