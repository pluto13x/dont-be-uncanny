extends ProgressBar

var chosen_character = "barista"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	match chosen_character:
		"barista":
			value = Dialogic.VAR.barista_uncanny
		"cook":
			value = Dialogic.VAR.cook_uncanny
		"cashier":
			value = Dialogic.VAR.cashier_uncanny
		"server":
			value = Dialogic.VAR.server_uncanny
