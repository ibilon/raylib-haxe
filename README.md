# raylib-haxe

[![License](https://img.shields.io/badge/license-ZLIB-blue.svg)](http://opensource.org/licenses/ZLIB)
[![Build Status](https://travis-ci.org/ibilon/raylib-haxe.svg?branch=master)](https://travis-ci.org/ibilon/raylib-haxe)

Haxe externs for the [raylib library](https://github.com/raysan5/raylib).

This requires a C++ compiler, cmake and make to build raylib during your first build.

Currently this only covers the `raylib.h` header.

Some functions have been changed to make it haxe friendlier, mainly ones dealing with strings, or to make it type safer.

Run `haxe buildExamples.hxml` to compile all the examples, this may take a while.

## Usage

Instead of doing `#include <raylib.h>` do `import raylib.Raylib; import raylib.Raylib.*;` and add `-lib raylib` to your hxml.

## About raylib

raylib is a simple and easy-to-use library to enjoy videogames programming.

raylib is highly inspired by Borland BGI graphics lib and by XNA framework.

raylib could be useful for prototyping, tools development, graphic applications, embedded systems and education.

NOTE for ADVENTURERS: raylib is a programming library to enjoy videogames programming; no fancy interface, no visual helpers, no auto-debugging... just coding in the most pure spartan-programmers way.

## License

The externs and raylib are both an unmodified zlib/libpng license, which is an OSI-certified, BSD-like license that allows static linking with closed source software.

Check raylib's [LICENSE](https://github.com/raysan5/raylib/blob/master/LICENSE.md) for further details on the fonts and art included with it.
