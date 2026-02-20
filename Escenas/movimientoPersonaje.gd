extends CharacterBody2D

const JUMP_VELOCITY = -400.0
@export var maxSpeed=300

<<<<<<< Updated upstream
=======
func _ready():
	print(get_position_delta(),"personaje")
	add_to_group("player")
	
>>>>>>> Stashed changes
func _physics_process(delta: float) -> void:
	var input_vector=Vector2.ZERO
	input_vector.x=Input.get_action_strength("ui_right")-Input.get_action_strength("ui_left")
	input_vector.y=Input.get_action_strength("ui_down")-Input.get_action_strength("ui_up")
	input_vector=input_vector.normalized()

	if input_vector !=Vector2.ZERO:
		velocity=input_vector
	else:
		velocity = Vector2.ZERO
	move_and_collide(velocity*delta*maxSpeed)
	



	move_and_slide()
