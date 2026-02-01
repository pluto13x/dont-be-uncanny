extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_neutral_pressed() -> void:
	$body/face.texture = load("res://assets/sprites/mc/faces/mc-face-neutral.png")


func _on_smile_pressed() -> void:
	$body/face.texture = load("res://assets/sprites/mc/faces/mc-face-smile.png")


func _on_frown_pressed() -> void:
	$body/face.texture = load("res://assets/sprites/mc/faces/mc-face-sad.png")


func _on_angry_pressed() -> void:
	$body/face.texture = load("res://assets/sprites/mc/faces/mc-face-angry.png")


func _on_laugh_pressed() -> void:
	$body/face.texture = load("res://assets/sprites/mc/faces/mc-face-laugh.png")
