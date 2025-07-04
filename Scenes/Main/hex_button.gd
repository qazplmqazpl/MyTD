@tool
@icon("res://Assets/Editor/hexbutton.png")
extends TextureButton

var towerid := 0 
var block = Block.new()
#
#func _ready():
	#var bitmap = BitMap.new()
	#bitmap.create_from_image_alpha(get_texture_normal().get_image())
	#set_click_mask(bitmap)
	#
	#$BlockDocker.basicsize=get_minimum_size()
