extends CharacterBody2D

class_name spaceman

@export var speed = 300

var target = null

func _input(event):
	if event.is_action_pressed("click"):
		target = get_global_mouse_position()

func _physics_process(delta):
	if target != null:
		velocity = position.direction_to(target) * speed
	#look_at(target)
		if position.distance_to(target) > 10:
			move_and_slide()
	#global_transform.origin.x = clamp(global_transform.origin.x, 6, 642)
	#global_transform.origin.y = clamp(global_transform.origin.y, 1000, 1085)

	if velocity.x != 0:
		$AnimatedSprite2D.animation = "walk"
		$AnimatedSprite2D.flip_v = false
		$AnimatedSprite2D.flip_h = velocity.x < 0 



func start(pos):
	position = pos
	show()
	$CollisionShape2D.disabled = false
