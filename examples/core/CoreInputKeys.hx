/*******************************************************************************************
*
*   raylib [core] example - Keyboard input
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

class CoreInputKeys
{
	static function main()
	{
		// Initialization
		//--------------------------------------------------------------------------------------
		var screenWidth = 800;
		var screenHeight = 450;

		InitWindow(screenWidth, screenHeight, "raylib [core] example - keyboard input");

		var ballPosition = new Vector2(screenWidth/2, screenHeight/2);

		SetTargetFPS(60);       // Set target frames-per-second
		//--------------------------------------------------------------------------------------

		// Main game loop
		while (!WindowShouldClose())    // Detect window close button or ESC key
		{
			// Update
			//----------------------------------------------------------------------------------
			if (IsKeyDown(KEY_RIGHT)) ballPosition.x += 2.0;
			if (IsKeyDown(KEY_LEFT)) ballPosition.x -= 2.0;
			if (IsKeyDown(KEY_UP)) ballPosition.y -= 2.0;
			if (IsKeyDown(KEY_DOWN)) ballPosition.y += 2.0;
			//----------------------------------------------------------------------------------

			// Draw
			//----------------------------------------------------------------------------------
			BeginDrawing();

				ClearBackground(RAYWHITE);

				DrawText("move the ball with arrow keys", 10, 10, 20, DARKGRAY);

				DrawCircleV(ballPosition, 50, MAROON);

			EndDrawing();
			//----------------------------------------------------------------------------------
		}

		// De-Initialization
		//--------------------------------------------------------------------------------------
		CloseWindow();        // Close window and OpenGL context
		//--------------------------------------------------------------------------------------
	}
}
