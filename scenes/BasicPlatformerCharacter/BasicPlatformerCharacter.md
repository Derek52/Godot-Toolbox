## Basic Platformer Character Scene & Script
This is a basic scene and script for a 2D platformer character. The character can run around, is affected by gravity, and can jump.

The code is pretty simple, and I'm not gonna explain too deeply.

### There are 3 things worth pointing out in the character's script.

1. The scene has a couple of empty properties that will need to be set
..* A shape will need to be set on the player's Hitbox
..* There is an animation called `run` in the AnimatedSprite. It's currently blank, it will run this way, but a blank animation is probably not what you want

2. To control the character in a level, your game's input map will need inputs labeled
..* `move_left`
..* `move_right`
..* `jump`

3. In the script's `run()` function there are two lines that flip the sprite on the h axis.  
They look like this.  
`$AnimatedSprite.flip_h = true`.  
These assume your graphics have a player facing to the right. If your character faces to the left by default, you will need to change these lines.
