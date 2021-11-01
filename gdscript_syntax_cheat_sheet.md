## Basic GDScript Syntax

```
#Initialize a variable
var playerIsDead = false

#Initialize a const - a variable whose value can not be edited
const gravity = 9.8

#Initialize a variable with type hints
var numberOfStars : int = 3
#basic built in types are bool, int, float, and String

#Initialize a variable that can be edited in the graphical editor
export(float) var Gravity

#Initialize a variable that can be edited in the graphical editor, with a default value set
#It is probably a good idea to always set a default value for exported variables. It can stop scripts from breaking when you inevitably 
forget to configure the variable in the editor.
export(float) var Gravity = 9.8
```
