/*******************************************************************************************
*
*   raylib [core] example - Initialize 3d mode
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

class Core3DMode
{
	static function main()
	{
		// Initialization
		//--------------------------------------------------------------------------------------
		var screenWidth = 800;
		var screenHeight = 450;

		InitWindow(screenWidth, screenHeight, "raylib [core] example - 3d mode");

		// Define the camera to look into our 3d world
		var camera:Camera3D = {
			position: { x: 0.0, y: 10.0, z: 10.0 },  // Camera position
			target: { x: 0.0, y: 0.0, z: 0.0 },      // Camera looking at point
			up: { x: 0.0, y: 1.0, z: 0.0 },          // Camera up vector (rotation towards target)
			fovy: 45.0,                                // Camera field-of-view Y
			type: CAMERA_PERSPECTIVE                   // Camera mode type
		}

		var cubePosition = { x: 0.0, y: 0.0, z: 0.0 };

		SetTargetFPS(60);   // Set our game to run at 60 frames-per-second
		//--------------------------------------------------------------------------------------

		// Main game loop
		while (!WindowShouldClose())    // Detect window close button or ESC key
		{
			// Update
			//----------------------------------------------------------------------------------
			// TODO: Update your variables here
			//----------------------------------------------------------------------------------

			// Draw
			//----------------------------------------------------------------------------------
			BeginDrawing();

				ClearBackground(RAYWHITE);

				BeginMode3D(camera);

					DrawCube(cubePosition, 2.0, 2.0, 2.0, RED);
					DrawCubeWires(cubePosition, 2.0, 2.0, 2.0, MAROON);

					DrawGrid(10, 1.0);

				EndMode3D();

				DrawText("Welcome to the third dimension!", 10, 40, 20, DARKGRAY);

				DrawFPS(10, 10);

			EndDrawing();
			//----------------------------------------------------------------------------------
		}

		// De-Initialization
		//--------------------------------------------------------------------------------------
		CloseWindow();        // Close window and OpenGL context
		//--------------------------------------------------------------------------------------
	}
}
