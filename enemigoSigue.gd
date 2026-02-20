extends CharacterBody2D

@export var speed: float = 120.0
@export var stop_distance: float = 24.0

var target: Node2D

func _physics_process(delta):

	# Buscar jugador cada frame si no existe o no es válido
	if !is_instance_valid(target):
		target = get_tree().get_first_node_in_group("player")
		if target == null:
			return  # sigue sin encontrar jugador

	# Movimiento hacia el jugador
	var distance = global_position.distance_to(target.global_position)

	if distance > stop_distance:
		var direction = global_position.direction_to(target.global_position)
		velocity = direction * speed
	else:
		velocity = Vector2.ZERO

	move_and_slide()
	#var distance = direction.length()
	#if distance > stop_distance:#else:
	#	velocity = Vector2.ZERO
	# Opcional: que el enemigo mire hacia el jugador
	#if velocity.length() > 0:
	#	rotation = velocity.angle()
