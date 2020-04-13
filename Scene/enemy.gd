extends KinematicBody2D


const GRAVITY=10

const FLOOR=Vector2(0,-1)

var velocity=Vector2()
var direction=1

func _ready():
	$AnimatedSprite.play("walk")
	pass 

func _physics_process(delta):
	var SPEED=30*Puntuacion.speed
	velocity.x=SPEED*direction
	if direction == 1:
		$AnimatedSprite.flip_h = false
		
	elif direction == -1:
		$AnimatedSprite.flip_h = true
			
	
	velocity.y+=GRAVITY
	velocity=move_and_slide(velocity,FLOOR)
	if is_on_wall():
		direction=direction*-1
		$RayCast2D.position.x *=-1
	

	for i in get_slide_count():
		var collision = get_slide_collision(i)
		if collision.collider.name == "Player":
			get_parent().get_node("Player").translate(Vector2(1.079,-4.971))
			
	#if $RayCast2D.is_colliding()==false:
	#	$RayCast2D.position.x *=-1
	#	direction=direction*-1
	#	print("ME CAI")
			
