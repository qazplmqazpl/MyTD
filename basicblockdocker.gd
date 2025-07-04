class_name BlockDocker extends Control

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
	if data is not Block:
		print("Data is not block")
		return false
	if dockedblock != null:
		print("block already docked")
		return false
	return true
	
	
func _drop_data(_pos, data):
	data.get_parent().dockedblock = null
	data.get_parent().remove_child(data)
	add_child(data)
	dockedblock = data

func _ready():
	reference.set_editor_only(false)
	reference.set_border_width(5)
	reference.set_mouse_filter(MOUSE_FILTER_IGNORE)
	reference.set_anchors_preset(PRESET_FULL_RECT)
	add_child(reference)
