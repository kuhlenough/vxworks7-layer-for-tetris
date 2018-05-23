# vxworks7-layer-for-tetris

This repository demostrates the 3PP layer functionality for a simple open source package.  The 3PP (third party ports) infastucture is a specific type of VxWorks 7 layer that is intended for building code not supplied with VxWorks 7.

The 3PP layer downloads or checks out code from a remote location and incorperates it into a VSB (VxWorks Source Build) project. It is intended to simplify the process of cross compiling for VxWorks target systems.

There are two types of 3PP layers, those that use VxWorks standard makefiles, and those that wrap the build system provided with the code. This layer uses the wrapping method. 

Download this layer and place i in the vxworks-7/pkgs/app directory, include the layer **TETRIS** in your VSB. Building will result in *VSBDir*/usr/root/*tool*/bin/tetris.vxe 
