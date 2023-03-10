extends Node


const MOD_DIR := "KANA-ScrollWithController"
const MODNAME_LOG_NAME := "KANA-ScrollWithController"

var mod_dir_path := ""
var extensions_dir_path := ""


func _init(modLoader = ModLoader) -> void:
	ModLoaderUtils.log_info("Init", MODNAME_LOG_NAME)
	mod_dir_path = modLoader.UNPACKED_DIR.plus_file(MOD_DIR)

	# Add extensions
	install_script_extensions(modLoader)


func install_script_extensions(modLoader) -> void:
	extensions_dir_path = mod_dir_path.plus_file("extensions")

	modLoader.install_script_extension(extensions_dir_path.plus_file("ui/menus/shop/item_description.gd"))


func _ready() -> void:
	ModLoaderUtils.log_info("Ready", MODNAME_LOG_NAME)
