@tool
extends NinePatchRect


func _ready():
	var sizearr = Globals.getChildenGlobalPosRecursiveStart(self)
	set_anchor_and_offset(SIDE_LEFT,1,sizearr[1]-sizearr[3])
	set_anchor_and_offset(SIDE_RIGHT,1,0)
	set_anchor_and_offset(SIDE_TOP,0,0)
	set_anchor_and_offset(SIDE_BOTTOM,1,0)
