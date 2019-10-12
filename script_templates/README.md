# Godot Script Templates

This is a set of Godot script templates, used when you create a new script.

## To add the scripts:
Take any template from this folder, and place it at:

### Linux or Mac:

 `~/.config/godot/script_templates/`
 
 For Godot 3:
  `~/.local/share/godot/app_userdata`

## On Windows

`C:\Users\youruser\AppData\Roaming\Godot\script_templates\` 

After placing the script in the folder it will show up in the 'Attach Node Script' when you create a new script in the Godot engine.

All these according to the [Godot's Documentation](https://docs.godotengine.org/en/3.1/tutorials/io/data_paths.html):

"On desktop operating systems, the engine uses the typical `~/.local/share/godot/app_userdata/Name` on macOS and Linux, and `%APPDATA%/Name` on Windows. Name is taken from the application name defined in the Project Settings, but it can be overridden on a per-platform basis using feature tags."
