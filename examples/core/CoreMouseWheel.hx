/*******************************************************************************************
*
*   raylib [core] examples - Mouse wheel
*
*   This test has been created using raylib 1.1 (www.raylib.com)
*   raylib is licensed under an unmodified zlib/libpng license (View raylib.h for details)
*
*   Copyright (c) 2014 Ramon Santamaria (@raysan5)
*
********************************************************************************************/

package examples.core;

import raylib.Raylib;
import raylib.Raylib.*;

class CoreMouseWheel
{
	static function main()
	{
		// Initialization
		//--------------------------------------------------------------------------------------
		var screenWidth = 800;
		var screenHeight = 450;

		InitWindow(screenWidth, screenHeight, "raylib [core] example - mouse wheel");

		var boxPositionY = Std.int(screenHeight/2 - 40);
		var scrollSpeed = 4;            // Scrolling speed in pixels

		SetTargetFPS(60);
		//--------------------------------------------------------------------------------------

		// Main game loop
		while (!WindowShouldClose())    // Detect window close button or ESC key
		{
			// Update
			//----------------------------------------------------------------------------------
			boxPositionY -= (GetMouseWheelMove()*scrollSpeed);
			//----------------------------------------------------------------------------------

			// Draw
			//----------------------------------------------------------------------------------
			BeginDrawing();

				ClearBackground(RAYWHITE);

				DrawRectangle(Std.int(screenWidth/2 - 40), boxPositionY, 80, 80, MAROON);

				DrawText("Use mouse wheel to move the cube up and down!", 10, 10, 20, GRAY);
				DrawText('Box position Y: $boxPositionY', 10, 40, 20, LIGHTGRAY);

			EndDrawing();
			//----------------------------------------------------------------------------------
		}

		// De-Initialization
		//--------------------------------------------------------------------------------------
		CloseWindow();        // Close window and OpenGL context
		//--------------------------------------------------------------------------------------
	}
}
