@icon("res://Assets/Editor/hexbutton.png")
class_name HexDocker extends BlockDocker

const texture = preload("res://Assets/Icons/hexbutton2.png")
var bitmap =  BitMap.new()

func _ready():
	bitmap.create_from_image_alpha(texture.get_image())
	var sprite = Sprite2D.new()
	sprite.set_centered(false)
	sprite.set_texture(texture)
	set_custom_minimum_size(texture.get_size())
	basicsize = texture.get_size()
	add_child(sprite)
	Sprite2D
	pass

func _get_drag_data(_pos):
	if not bitmap.get_bitv(_pos): return null
	return super(_pos) 
	
func _can_drop_data(_pos, data):
	if not bitmap.get_bitv(_pos):
		print("bitmap err")
		return null
	return super(_pos,data)
	
func _drop_data(_pos, data):
	return super(_pos,data)
