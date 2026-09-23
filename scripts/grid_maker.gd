extends Control;

# [ Variables ] #

@export var ROWS: int = 8;
@export var COLUMNS: int = 6;
var gubby: PackedScene = preload("res://scenes/gubby.tscn");
var container: PackedScene = preload("res://scenes/container.tscn");

# [ Functions ] #

func _ready():
	
	# [ Loops ] #
	
	for x: int in range(0, ROWS):
		
		# [ Loops ] #
		
		for y: int in range(0, COLUMNS):
			
			# [ Variables ] #
			
			var child: Panel = container.instantiate();
			add_child(child);
			child.position = Vector2(110 * x, 110 * y);
			
			var another_child: Sprite2D = gubby.instantiate();
			child.add_child(another_child);
			another_child.modulate = Color(randf(), randf(), randf());
