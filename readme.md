# OpenFL Memory Leak Test

Simple program to see if simple sprite add/remove can crash the whole thing.

Currently it only tests on Windows 7/10 at the moment.

# Used Libs
Probably not need so much, I use OpenFL+Lime+SVG
```
> haxe --version
4.1.4

> haxelib list
actuate: 1.8.6 1.8.7 [1.8.9]
advanced-layout: [0.9.1]
box2d: [1.2.3]
differ: 1.3.0 [1.4.0]
flixel: 4.3.0 4.4.1 4.5.1 4.7.0 4.8.1 [4.9.0]
format: [3.5.0]
hxcpp: 3.4.188 4.0.4 4.0.64 4.1.15 [4.2.1]
lime-samples: 2.6.0 3.4.0 4.0.1 6.2.0 [7.0.0]
lime: 2.9.1 3.7.0 4.0.1 5.9.1 6.3.1 6.4.0 7.7.0 7.8.0 [7.9.0]
openfl-samples: 3.3.1 4.9.0 5.1.1 6.0.0 [8.7.0]
openfl: 3.6.1 4.7.0 4.9.0 5.1.1 6.5.3 7.1.2 8.0.2 8.1.1 8.9.6 8.9.7 9.0.0 9.0.2 [9.1.0]
svg: 1.1.2 [1.1.3]
swf: 2.3.1 3.0.0 [3.0.2]
tink_core: [1.26.0]

> HashLink version is 1.10
```

# Current Casualty(s)
## Simple Object with thing (Main)
* HashLink: SVG, TextField
* Neko: SVG (need more test. It keeps increasing, but too slow to make it reach 2GB/4GB and crash)

## A TextField that change content every frame @ 60 FPS (MainTextfield)
* HashLink (dead after ~18 hours)