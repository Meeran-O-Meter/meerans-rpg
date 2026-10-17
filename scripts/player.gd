extends CharacterBody2D

@export var speed = 100
@onready var animation: AnimatedSprite2D = $Animation


func _ready():
	var screen_size = get_viewport_rect().size
	position = screen_size/ 2


func get_input():
	var direction: Vector2 = Input.get_vector("left", "right", "up", "down")
	velocity = direction * speed

	if direction.x > 0:
		animation.play("right")
	elif direction.x < 0:
		animation.play("left")
	elif direction.y <  0:
		animation.play("up")
	elif direction.y > 0:
		animation.play("down")
	else:
		animation.play("idle")
	
func _physics_process(delta):
	get_input()
	move_and_slide()

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("attack"):
		print("boom")
	
	
	
