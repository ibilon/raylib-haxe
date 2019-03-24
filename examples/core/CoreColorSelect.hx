/*******************************************************************************************
*
*   raylib [core] example - Color selection by mouse (collision detection)
*
*   This example has been created using raylib 1.0 (www.raylib.com)
*   raylib is licensed under an unmodified zlib/libpng license (View raylib.h for details)
*
*   Copyright (c) 2014 Ramon Santamaria (@raysan5)
*
********************************************************************************************/

package examples.core;

import raylib.Raylib;
import raylib.Raylib.*;

class CoreColorSelect
{
	static function main()
	{
		// Initialization
		//--------------------------------------------------------------------------------------
		var screenWidth = 800;
		var screenHeight = 450;

		InitWindow(screenWidth, screenHeight, "raylib [core] example - color selection (collision detection)");

		var colors = [ DARKGRAY, MAROON, ORANGE, DARKGREEN, DARKBLUE, DARKPURPLE, DARKBROWN,
							GRAY, RED, GOLD, LIME, BLUE, VIOLET, BROWN, LIGHTGRAY, PINK, YELLOW,
							GREEN, SKYBLUE, PURPLE, BEIGE ];

		var colorsRecs:Array<Rectangle> = [];             // Rectangles array

		// Fills colorsRecs data (for every rectangle)
		for (i in 0...21)
		{
			colorsRecs.push({
				x: 20 + 100*(i%7) + 10*(i%7),
				y: 60 + 100*(i/7) + 10*(i/7),
				width: 100,
				height: 100
			});
		}

		var selected = [for (i in 0...21) false];  // Selected rectangles indicator

		var mousePoint;

		SetTargetFPS(60);               // Set our game to run at 60 frames-per-second
		//--------------------------------------------------------------------------------------

		// Main game loop
		while (!WindowShouldClose())    // Detect window close button or ESC key
		{
			// Update
			//----------------------------------------------------------------------------------
			mousePoint = GetMousePosition();

			for (i in 0...21)    // Iterate along all the rectangles
			{
				if (CheckCollisionPointRec(mousePoint, colorsRecs[i]))
				{
					colors[i].a = 120;

					if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON)) selected[i] = !selected[i];
				}
				else colors[i].a = 255;
			}
			//----------------------------------------------------------------------------------

			// Draw
			//----------------------------------------------------------------------------------
			BeginDrawing();

				ClearBackground(RAYWHITE);

				for (i in 0...21)    // Draw all rectangles
				{
					DrawRectangleRec(colorsRecs[i], colors[i]);

					// Draw four rectangles around selected rectangle
					if (selected[i])
					{
						DrawRectangle(Std.int(colorsRecs[i].x), Std.int(colorsRecs[i].y), 100, 10, RAYWHITE);        // Square top rectangle
						DrawRectangle(Std.int(colorsRecs[i].x), Std.int(colorsRecs[i].y), 10, 100, RAYWHITE);        // Square left rectangle
						DrawRectangle(Std.int(colorsRecs[i].x + 90), Std.int(colorsRecs[i].y), 10, 100, RAYWHITE);   // Square right rectangle
						DrawRectangle(Std.int(colorsRecs[i].x), Std.int(colorsRecs[i].y + 90), 100, 10, RAYWHITE);   // Square bottom rectangle
					}
				}

			EndDrawing();
			//----------------------------------------------------------------------------------
		}

		// De-Initialization
		//--------------------------------------------------------------------------------------
		CloseWindow();                // Close window and OpenGL context
		//--------------------------------------------------------------------------------------
	}
}
