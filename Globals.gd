@tool
extends Node


static func getChildenGlobalPosRecursiveStart(node): # [upper, left, bottom, right]
	var max = [0,0,node.get_size().y,node.get_size().x]
	for child in node.get_children():
		if child is not Control: continue
		var returnval = getChildenGlobalPosRecursive(child)
		if returnval[0] < max[0]: max[0] = returnval[0]
		if returnval[1] < max[1]: max[1] = returnval[1]
		if returnval[2] > max[2]: max[2] = returnval[2]
		if returnval[3] > max[3]: max[3] = returnval[3]
	return max

static func getChildenGlobalPosRecursive(node): # [upper, left, bottom, right]
	var max = [\
	min(0,node.get_position().y)\
	,min(0,node.get_position().x)\
	,max(node.get_parent().get_size().y,node.get_position().y+node.get_size().y)\
	,max(node.get_parent().get_size().x,node.get_position().x+node.get_size().x)]
	
	for child in node.get_children():
		if child is not Control: continue
		var returnval = getChildenGlobalPosRecursive(child)
		if returnval[0] < max[0]: max[0] = returnval[0]
		if returnval[1] < max[1]: max[1] = returnval[1]
		if returnval[2] > max[2]: max[2] = returnval[2]
		if returnval[3] > max[3]: max[3] = returnval[3]
	return max
	
