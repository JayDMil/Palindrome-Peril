extends CharacterBody2D

const SPEED = 300
@onready var animated_sprite = $AnimatedSprite2D

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):
	#player is affected by gravity now
	velocity.y += gravity * delta
	
	#handles the direction
	var direction = Input.get_axis("walk_left", "walk_right")
	
	#walk animations
	if is_on_floor():
		if direction > 0:
			print("right")
			#animated_sprite.play("left")
		elif direction < 0:
			print("left")
			#animated_sprite.flip_h = true
		else:
			animated_sprite.play("idle")
	
	#applies movement
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	move_and_slide()
