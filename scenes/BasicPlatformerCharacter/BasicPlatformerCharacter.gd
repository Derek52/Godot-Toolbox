extends KinematicBody2D

export (float) var Gravity = 3600
export (float) var Speed = 500
export (float) var Jump = 1200

const UP = Vector2(0, -1)

var velocity : Vector2 = Vector2()
var isJumping : bool = false

func _ready() -> void:
	pass


func _physics_process(delta) -> void:
	fall(delta)
	run()
	jump()
	move_and_slide(velocity, UP)


func fall(delta) -> void:
	if is_on_floor():
		velocity.y = 1
		isJumping = false
	elif is_on_ceiling():
		velocity.y = 1
	else:
		velocity.y += Gravity * delta


func jump() -> void:
	if Input.is_action_just_pressed("jump"):
		if is_on_floor():
			velocity.y = -Jump
			print("Jump")
			isJumping = true


func run() -> void:
	if Input.is_action_pressed("move_left") and not Input.is_action_pressed("move_right"):
		velocity.x = Speed * -1
		$AnimatedSprite.flip_h = true
	elif Input.is_action_pressed("move_right") and not Input.is_action_pressed("move_left"):
		velocity.x = Speed
		$AnimatedSprite.flip_h = false
	else:
		velocity.x = 0
	if isJumping != false:
		$AnimatedSprite.play("run")