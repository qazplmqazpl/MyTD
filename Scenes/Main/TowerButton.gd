@tool
class_name TowerButton extends NinePatchRect


func _ready():
	var sizearr = Globals.getChildenGlobalPosRecursiveStart(self)
	set_custom_minimum_size(Vector2(sizearr[3]-sizearr[1],sizearr[2]-sizearr[0]))
	set_anchor_and_offset(SIDE_LEFT,0,0)
	set_anchor_and_offset(SIDE_TOP,0,0)
	set_anchor_and_offset(SIDE_BOTTOM,0,sizearr[2]-sizearr[0])
	set_anchor_and_offset(SIDE_RIGHT,0,sizearr[3]-sizearr[1])

#func _unhandled_input(event: InputEvent) -> void:
	#if event is InputEventMouseButton:
		#if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			#print("Left button was clicked at ", event.position, self)
			##get_viewport().set_input_as_handled()
		#if event.button_index == MOUSE_BUTTON_WHEEL_UP and event.pressed:
			#print("Wheel up", self)
			##get_viewport().set_input_as_handled()
			#
