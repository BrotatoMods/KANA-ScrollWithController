extends "res://ui/menus/shop/item_description.gd"


onready var kanaBetterScroll_v_scroll_bar = _scroll_container.get_v_scrollbar()
var kanaBetterScroll_scroll_step := 0.02


func _ready():
	var kanaBetterScroll_scroll_step_conifg = ModLoader.get_mod_config("KANA-ScrollWithController", "scroll_step")
	# If there is no error retrieving the config data
	if kanaBetterScroll_scroll_step_conifg.error == 0 || kanaBetterScroll_scroll_step_conifg.error == 2:
		# Set the scroll_step to the config data
		kanaBetterScroll_scroll_step = kanaBetterScroll_scroll_step_conifg.data


func _physics_process(delta):
	if Input.is_action_pressed("rjoy_up"):
		kanaBetterScroll_v_scroll_bar.ratio -= kanaBetterScroll_scroll_step
	if Input.is_action_pressed("rjoy_down"):
		kanaBetterScroll_v_scroll_bar.ratio += kanaBetterScroll_scroll_step
