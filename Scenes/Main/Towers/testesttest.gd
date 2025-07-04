extends TowerButton

func _ready():
	var sizearr = Globals.getChildenGlobalPosRecursiveStart(self)
	set_custom_minimum_size(Vector2(sizearr[3]-sizearr[1],sizearr[2]-sizearr[0]))
	set_anchor_and_offset(SIDE_LEFT,0,0)
	set_anchor_and_offset(SIDE_TOP,0,0)
	set_anchor_and_offset(SIDE_BOTTOM,0,sizearr[2]-sizearr[0])
	set_anchor_and_offset(SIDE_RIGHT,0,sizearr[3]-sizearr[1])
	
