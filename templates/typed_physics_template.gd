#This is a template for the basic new script Godot creates, but with type hints.
#This one also calls the _physics_process function instead of the regular _process function.

extends %BASE%

func _ready() -> void:
%TS%pass

func _physics_process(delta) -> void:
%TS%pass
