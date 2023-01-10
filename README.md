# BouncyUI
UI control node extension for the Godot Game Engine using GDextension (Godot 4 beta 11, will update until release)  
(under construction and subject to change, use only in DEBUG mode)..

This is a UI node extension that I'm using in a personal project. It adds 3 control nodes that facilitate making a responsive UI.

## Installation
### Compiled from source (Debug)  

This guide assumes you have the required C++ compilers and SCons installed, explained in the [godot compiling guide.](https://docs.godotengine.org/en/stable/development/compiling/index.html) 

Clone the project with submodules  
```
git clone --recurse-submodules git@github.com:jquinl/bouncy_ui.git
```  
The source library is in `bouncy_ui_gd/addons/lib/bouncy_ui` here you can find the SConstruct file, which needs godot-cpp. placed in `bouncy_ui_gd/addons/lib/bouncy_ui/godot-cpp`
```
cd bouncy_ui/bouncy_ui_gd/addons/lib/bouncy_ui
scons target=template_debug
```  
The binary will be placed in the bin folder inside the example godot project `bouncy_ui_gd/addons/bin`  

The needed `.gdextension` file can be found in `bouncy_ui_gd/addons/lib/bouncy_ui.gdextension`  make sure you place it inside your folder and modify it to match the location of the binary in your project. If using Mac or Linux, add the corresponding line to the .gdextension file.

## Example
The example consists of 1 scene, showcasing different use cases of the BouncyUI control nodes.  

## Nodes
BouncyUI includes 3 new container nodes (Under Control). Each container should hold a single UI Element.(Subject to change)  
The nodes are:  

1.  `StretchyContainer`: This container will stretch a child node based on the supplied X and Y curves, only when the mouse hovers over it.

2.  `PunchyContainer`: This container will stretch a child node based on the supplied X and Y curves, controlled by script. Assumes that the stretching and unstretching will finish before being called again. (As oppossed to StretchyContainer) 

3.  `JumpyContainer`: The most flexible. Allows for moving, rotating and scaling the contained UI element. It will trigger only on mouse entering.

Combinig these 3 nodes should cover a lot of use cases.

## Usage
Any BouncyUI node will modify a single child node. The child node will be modified usign the curves supplied to the child node. The degree of modification is relative to the Control node size. This should keep the UI consistent at different resolutions.
