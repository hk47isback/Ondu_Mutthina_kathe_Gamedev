extends CharacterBody3D

@export var speed: float = 6.0
@export var jump_velocity: float = 8.0
@export var gravity: float = 20.0
@export var mouse_sensitivity: float = 0.003
@export var camera_angle_limit: float = 80.0

@onready var camera: Camera3D = $Camera3D

var camera_rotation: Vector2 = Vector2.ZERO

func _ready():
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED

func _input(event):
	# Capture mouse movement for camera rotation
	if event is InputEventMouseMotion and Input.mouse_mode == Input.MOUSE_MODE_CAPTURED:
		camera_rotation.x -= event.relative.y * mouse_sensitivity
		camera_rotation.y -= event.relative.x * mouse_sensitivity
		
		# Limit vertical camera angle
		camera_rotation.x = clamp(camera_rotation.x, deg_to_rad(-camera_angle_limit), deg_to_rad(camera_angle_limit))
	
	# Toggle mouse capture with ESC
	if event.is_action_pressed("ui_cancel"):
		if Input.mouse_mode == Input.MOUSE_MODE_CAPTURED:
			Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
		else:
			Input.mouse_mode = Input.MOUSE_MODE_CAPTURED

func _physics_process(delta):
	# Apply camera rotation
	rotation.y = camera_rotation.y
	camera.rotation.x = camera_rotation.x
	
	var direction = Vector3.ZERO
	
	# Movement relative to character's facing direction
	if Input.is_key_pressed(KEY_W) or Input.is_key_pressed(KEY_UP):
		direction += transform.basis.z
	if Input.is_key_pressed(KEY_S) or Input.is_key_pressed(KEY_DOWN):
		direction -= transform.basis.z
	if Input.is_key_pressed(KEY_A) or Input.is_key_pressed(KEY_LEFT):
		direction += transform.basis.x
	if Input.is_key_pressed(KEY_D) or Input.is_key_pressed(KEY_RIGHT):
		direction -= transform.basis.x
	
	direction = direction.normalized()
	velocity.x = direction.x * speed
	velocity.z = direction.z * speed
	
	# Jump when on floor
	if is_on_floor() and Input.is_key_pressed(KEY_SPACE):
		velocity.y = jump_velocity
	
	# Apply gravity
	velocity.y -= gravity * delta
	
	move_and_slide()
