extends CharacterBody2D
@onready var target=$"../Personaje"
var speed=150

func _physics_process(delta: float) -> void:
	var direction=(target.position-position).normalized()
	velocity=direction*speed
	#look_at(target.position)
	move_and_slide()
	print(get_position_delta(),"enemigo")
	#var distance = direction.length()
	#if distance > stop_distance:#else:
	#	velocity = Vector2.ZERO
	# Opcional: que el enemigo mire hacia el jugador
	#if velocity.length() > 0:
	#	rotation = velocity.angle()
