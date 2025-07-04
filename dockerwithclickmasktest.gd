class_name BlockDockerClickMask extends TextureButton

var basicsize := Vector2(50,50):
	set(value):
		if dockedblock == null: set_size(value)
		basicsize = value
var reference = ReferenceRect.new()
var dockedblock:
	set(value):
		if value == null : 
			dockedblock = null
			set_size(basicsize)
		else:
			set_size(value.blocksize)
			dockedblock = value


func _get_drag_data(_pos):
	if dockedblock == null: return null
	var preview : Block = dockedblock.duplicate()
	var previewcontrol = Control.new()
	previewcontrol.add_child(preview)
	preview.set_position(dockedblock.blocksize*-0.5)
	print(preview.blocksize)
	set_drag_preview(previewcontrol)
	return dockedblock
	
func _can_drop_data(_pos, data):
	return data is Block and dockedblock == null
	
func _drop_data(_pos, data):
	data.get_parent().dockedblock = null
	data.get_parent().remove_child(data)
	add_child(data)
	dockedblock = data

func _ready():
	set_texture_normal(preload("res://Assets/Editor/hexbutton.png"))
	var bitmap = BitMap.new()
	bitmap.create_from_image_alpha(get_texture_normal().get_image())
#	set_click_mask(bitmap)
	
	reference.set_editor_only(false)
	reference.set_border_width(5)
	reference.set_mouse_filter(MOUSE_FILTER_IGNORE)
	reference.set_anchors_preset(PRESET_FULL_RECT)
	add_child(reference)
