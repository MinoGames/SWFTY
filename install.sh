#!/bin/bash

cd "$(dirname "$0")"

haxelib install hashlink
haxelib install hscript

haxelib dev swfty .

cd submodules
haxelib dev format format
haxelib dev haxe-file-save haxe-file-save
haxelib dev haxe-zip haxe-zip
haxelib dev hxp hxp
haxelib dev lime lime
haxelib dev openfl openfl
haxelib dev binpacking Rectangle-Bin-Packing
haxelib dev mcli mcli
haxelib dev hxcpp hxcpp
haxelib dev heaps heaps
haxelib dev hlsdl hashlink/libs/sdl
haxelib dev hlopenal hashlink/libs/openal

# Install hashlink dependencies
brew install libpng jpeg-turbo libvorbis sdl2 mbedtls openal-soft libuv

# Make install hashlink
cd hashlink
make all && make install