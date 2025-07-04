extends ColorRect


func get_drag_data(_pos):
	# Use another colorpicker as drag preview.
	var sprite = Sprite2D.new()
	$TowerSprite.set_texture($TowerSprite.get_texture())
	set_drag_preview(sprite)
	return $TowerSprite.get_texture()


func can_drop_data(_pos, data):
	return data is Texture


func drop_data(_pos, data):
	$TowerSprite.set_texture(data)
