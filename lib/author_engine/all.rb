require_relative "version"
require_relative "config"
require_relative "commonmethods"

require "author_engine/states/state"
require "author_engine/states/boot"

require "author_engine/display/display"

require "author_engine/level/level"
require "author_engine/level/level_object"

require "author_engine/objects/object"
require "author_engine/objects/background"
require "author_engine/objects/block"
require "author_engine/objects/enemy"
require "author_engine/objects/player"
require "author_engine/objects/sign"
require "author_engine/objects/spike"

require "author_engine/menu/menu_state"
require "author_engine/menu/objects/menu_object"
require "author_engine/menu/objects/meta_menu_object"
require "author_engine/menu/objects/cursor"
require "author_engine/menu/objects/label"
require "author_engine/menu/objects/button"
require "author_engine/menu/objects/edit_line"