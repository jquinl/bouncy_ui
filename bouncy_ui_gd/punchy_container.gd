extends PunchyContainer


var IS_EXPANDED : bool
func _ready():
	punch_finished.connect(punch_finished_bool)
	unpunch_finished.connect(unpunch_finished_bool)
	
func _input(event):
	if event is InputEventMouseButton:
		if event.is_pressed():
			if(IS_EXPANDED):
				unpunch()
			else:
				punch()

func punch_finished_bool(_container):
	IS_EXPANDED = true
func unpunch_finished_bool(_container):
	IS_EXPANDED = false
