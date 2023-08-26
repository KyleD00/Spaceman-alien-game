extends Node2D




# Called when the node enters the scene tree for the first time.
func _ready():
	$Spaceman.start($Start_left.global_position)
	
	
#func newgame():
	#$Spaceman.start($Start_left.global_position)
	#var spaceman = get_parent().get_node("/res/Scenes/spaceman")
	#var spacemanPosition = spaceman.position
	#spacemanPosition.position = Vector2(100,100)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_body_entered(body):
	pass # Replace with function body.

#func startPosition():
	#$Spaceman.start($Start_left.global_position)
