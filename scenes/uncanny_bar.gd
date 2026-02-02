extends ProgressBar

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	match Global.chosen_character:
		"barista":
			value = Dialogic.VAR.barista_uncanny
		"cook":
			value = Dialogic.VAR.cook_uncanny
		"cashier":
			value = Dialogic.VAR.cashier_uncanny
		"server":
			value = Dialogic.VAR.server_uncanny
