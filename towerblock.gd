class_name TowerBlock extends Block


func _ready():
	var oursprite = Sprite2D.new()
	oursprite.set_texture(preload("res://Assets/Stickmen/Wizard/wizard.tres"))
	oursprite.set_centered(false)
	add_child(oursprite)
	blocksize = oursprite.get_texture().get_size()
