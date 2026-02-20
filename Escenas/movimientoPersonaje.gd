extends CharacterBody2D

const JUMP_VELOCITY = -400.0
@export var maxSpeed=300

func _ready():
	add_to_group("player")
	
func _physics_process(delta: float) -> void:
	var input_vector = Vector2.ZERO
	
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	
	input_vector = input_vector.normalized()

	velocity = input_vector * maxSpeed

	move_and_slide()
