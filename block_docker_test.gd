@tool
class_name TestBlockDocker extends BlockDocker

func _ready():
	super()
	dockedblock = TowerBlock.new()
	add_child(dockedblock)
	set_custom_minimum_size(basicsize)
