extends Area2D
@export var SPEED = 400
var screen_size
func _ready():
	screen_size = get_viewport_rect().size
	
func _process(delta):
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("RIGHT"):
		velocity.x += 1
	if Input.is_action_pressed("LEFT"):
		velocity.x -= 1
	if Input.is_action_pressed("DOWN"):
		velocity.y += 1
	if Input.is_action_pressed("UP"):
		velocity.y -= 1
	if velocity.length() > 0:
		velocity = velocity.normalized() * SPEED
		position += velocity * delta
		position.clamp(Vector2.ZERO,screen_size)
