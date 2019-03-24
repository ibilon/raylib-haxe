/*******************************************************************************************
*
*   raylib [core] example - World to screen
*
*   This example has been created using raylib 1.3 (www.raylib.com)
*   raylib is licensed under an unmodified zlib/libpng license (View raylib.h for details)
*
*   Copyright (c) 2015 Ramon Santamaria (@raysan5)
*
********************************************************************************************/

package examples.core;

import raylib.Raylib;
import raylib.Raylib.*;

class CoreWorldScreen
{
	static function main()
	{
		// Initialization
		//--------------------------------------------------------------------------------------
		var screenWidth = 800;
		var screenHeight = 450;

		InitWindow(screenWidth, screenHeight, "raylib [core] example - 3d camera free");

		// Define the camera to look into our 3d world
		var camera:Camera3D = {
			position: { x: 0.0, y: 10.0, z: 10.0 },  // Camera position
			target: { x: 0.0, y: 0.0, z: 0.0 },      // Camera looking at point
			up: { x: 0.0, y: 1.0, z: 0.0 },          // Camera up vector (rotation towards target)
			fovy: 45.0,                                // Camera field-of-view Y
			type: CAMERA_PERSPECTIVE                   // Camera mode type
		}

		var cubePosition = { x: 0.0, y: 0.0, z: 0.0 };

		var cubeScreenPosition;

		SetCameraMode(camera, CAMERA_FREE); // Set a free camera mode

		SetTargetFPS(60);                   // Set our game to run at 60 frames-per-second
		//--------------------------------------------------------------------------------------

		// Main game loop
		while (!WindowShouldClose())        // Detect window close button or ESC key
		{
			// Update
			//----------------------------------------------------------------------------------
			UpdateCamera(camera);          // Update camera

			// Calculate cube screen space position (with a little offset to be in top)
			cubeScreenPosition = GetWorldToScreen({ x: cubePosition.x, y: cubePosition.y + 2.5, z: cubePosition.z}, camera);
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

				DrawText("Enemy: 100 / 100", Std.int(cubeScreenPosition.x - MeasureText("Enemy: 100 / 100", 20) / 2), Std.int(cubeScreenPosition.y), 20, BLACK);
				DrawText("Text is always on top of the cube", Std.int((screenWidth - MeasureText("Text is always on top of the cube", 20)) / 2), 25, 20, GRAY);

			EndDrawing();
			//----------------------------------------------------------------------------------
		}

		// De-Initialization
		//--------------------------------------------------------------------------------------
		CloseWindow();        // Close window and OpenGL context
		//--------------------------------------------------------------------------------------
	}
}
