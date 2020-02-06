# GodotToast

## Android Toast notifications for Godot Engine 3.2
This is a super simple toast plugin for Godot engine. It works *for 3.2 only* with the new buildsystem (although you could probably make it work for the older version easily enough)

The module has been tested with [Godot-3.2-stable](https://github.com/godotengine/godot/releases) on two physical android devices (Samsung note 3, Huawei p20) and bluestacks

## Available Features
 For now the module simply has one function to display a toast.

## Setup GodotToast
1. Set up the build system as detailed in the [docs](https://docs.godotengine.org/en/3.2/getting_started/workflow/export/android_custom_build.html) 
2. Copy the "GodotToast" folder to the *android* folder inside of your project;
3. Add the module in the project settings `org/godotengine/godot/GodotToast` seperating multiple with `,`

2. On the project *Export* settings, check "use custom export"

## Use GodotToast
To use the module functions on your scripts, start the module as follows: 
```
var toast

func _ready():
	if(Engine.has_singleton("GodotToast")):
		toast= Engine.get_singleton("GodotToast")
```

(You can learn more about *Singletons* and initializations [here](http://docs.godotengine.org/en/stable/tutorials/step_by_step/singletons_autoload.html)). 

Then use the function wherever you want. 
```
toast.sendToast("Your Message")
```
I would advise you check that `toast != null` first in case you are running on other platforms also. 
```
if toast:
    toast.sendToast("Your Toast is ready")
else:
    print("GodotToast Module not found")
```
### a demo project is also provided containing a single button which will create a message saying "toast is ready"
