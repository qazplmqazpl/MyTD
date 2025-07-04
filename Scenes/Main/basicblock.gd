class_name Block extends Node2D


var blocksize := Vector2(0,0):
	set(value):
		print("basicblockset",value)
		blocksize = value

func _ready():
	var text = PlaceholderTexture2D.new()
	text.set_size(Vector2(50,50))
	var sprite = Sprite2D.new()
	sprite.set_texture(text)
	sprite.set_centered(false)
	blocksize = Vector2(50,50)
	add_child(sprite)
