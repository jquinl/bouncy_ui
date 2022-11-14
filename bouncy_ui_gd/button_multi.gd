extends Button

@onready var punchy = get_parent()
@onready var stretchy = get_parent().get_parent()
# Called when the node enters the scene tree for the first time.
func _ready():
	punchy.set_enabled(false)
	button_down.connect(pressed)
	punchy.punch_finished.connect(reset_button)
	
func pressed():
	stretchy.set_enabled(false)
	punchy.set_enabled(true)
	punchy.punch()

func reset_button(_button):
	print("a")
	stretchy.set_enabled(true)
	punchy.set_enabled(false)
