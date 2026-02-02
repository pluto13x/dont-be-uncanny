extends Sprite2D

#script counts time since last blink
var last_blink_time = 0.0
var since_last_blink = 0.0
@onready var main_node = $"../../../../../.."

func _ready() -> void:
	main_node.socializing_start.connect(_on_socializing_start)
	
func _on_socializing_start() -> void:
	last_blink_time = Time.get_ticks_msec() / 1000.0

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("blink"):
		var now := Time.get_ticks_msec() / 1000.0
		since_last_blink = now - last_blink_time
		last_blink_time = Time.get_ticks_msec() / 1000.0
		print ("time since last blink: " + str(since_last_blink))
