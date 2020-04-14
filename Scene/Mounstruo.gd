extends KinematicBody2D

export var EnemySpeed = 50
export var Gravity = 10

var EnemyMotion = Vector2()
var EnemyDirection = 1
var UP = Vector2(0,-1)
var OppositeDirection = -1

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(true) # Replace with function body.

func _physics_process(delta):
	
	for i in get_slide_count():
		var collision = get_slide_collision(i)
		
		if collision.collider.name == "TileMap":
			EnemyDirection = EnemyDirection * OppositeDirection	
	
		
	
	if EnemyDirection == 1:
		$Sprite.flip_h = false
		
	elif EnemyDirection == -1:
		$Sprite.flip_h = true

	EnemyMotion.x = EnemyDirection * EnemySpeed
	
	EnemyMotion = move_and_slide(EnemyMotion, UP,false,4,0.785398,false)
	
	
		
	
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

