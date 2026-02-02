extends AnimatedSprite2D

@onready var main_node = $"../../../.."
var last_breath_time
var time_between_breaths
var breathe = "in"
var allow_breathe = true

func _on_socializing_start() -> void:
	last_breath_time = Time.get_ticks_msec() / 1000.0
	
func calculate_time_since_last_breath() -> void:
	var now := Time.get_ticks_msec() / 1000.0
	time_between_breaths = now - last_breath_time
	print(time_between_breaths)
	allow_breathe = false
	
func _ready() -> void:
	main_node.socializing_start.connect(_on_socializing_start)

func _process(_delta: float) -> void:
	if allow_breathe:
		if Input.is_action_just_pressed("breathe_in") and breathe == "in":
			animation = "breathe in"
			play()
			calculate_time_since_last_breath()
			
		elif Input.is_action_just_pressed("breathe_out") and breathe == "out":
			animation = "breathe out"
			play()
			calculate_time_since_last_breath()

func _on_animation_finished() -> void:
	last_breath_time = Time.get_ticks_msec() / 1000.0
	if breathe == "in":
		breathe = "out"
	else:
		breathe = "in"
	allow_breathe = true
