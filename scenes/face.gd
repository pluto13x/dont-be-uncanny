extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_smile_pressed() -> void:
	texture = load("res://assets/sprites/ui/smileys/smile.png")

func _on_frown_pressed() -> void:
	texture = load("res://assets/sprites/ui/smileys/sad.png")

func _on_angry_pressed() -> void:
	texture = load("res://assets/sprites/ui/smileys/angry.png")

func _on_neutral_pressed() -> void:
	texture = load("res://assets/sprites/ui/smileys/neutral.png")

func _on_laugh_pressed() -> void:
	texture = load("res://assets/sprites/ui/smileys/laugh.png")
