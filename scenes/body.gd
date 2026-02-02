extends AnimatedSprite2D

@onready var main_node = $"../../../.."
var last_breath_time
var time_between_breaths

func _ready() -> void:
	main_node.socializing_start.connect(_on_socializing_start)

func _on_socializing_start() -> void:
	last_breath_time = Time.get_ticks_msec() / 1000.0

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("breathe_in") or Input.is_action_just_pressed("breathe_out"):
		var now := Time.get_ticks_msec() / 1000.0
		time_between_breaths = now - last_breath_time
		print("time between breaths: " + str(time_between_breaths))


func _on_animation_finished() -> void:
	last_breath_time = Time.get_ticks_msec() / 1000.0
