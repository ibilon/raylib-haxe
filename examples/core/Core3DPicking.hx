/*******************************************************************************************
*
*   raylib [core] example - Picking in 3d mode
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

class Core3DPicking
{
	static function main()
	{
		// Initialization
		//--------------------------------------------------------------------------------------
		var screenWidth = 800;
		var screenHeight = 450;

		InitWindow(screenWidth, screenHeight, "raylib [core] example - 3d picking");

		// Define the camera to look into our 3d world
		var camera:Camera3D = {
			position: { x: 10.0, y: 10.0, z: 10.0 },  // Camera position
			target: { x: 0.0, y: 0.0, z: 0.0 },      // Camera looking at point
			up: { x: 0.0, y: 1.0, z: 0.0 },          // Camera up vector (rotation towards target)
			fovy: 45.0,                                // Camera field-of-view Y
			type: CAMERA_PERSPECTIVE                   // Camera mode type
		};

		var cubePosition = { x: 0.0, y: 1.0, z: 0.0 };
		var cubeSize = { x: 2.0, y: 2.0, z: 2.0 };

		var ray:Ray = { // Picking line ray
			position: { x: 0.0, y: 0.0, z: 0.0 },
			direction: { x: 0.0, y: 0.0, z: 0.0 }
		};

		var collision = false;

		SetCameraMode(camera, CAMERA_FREE); // Set a free camera mode

		SetTargetFPS(60);                   // Set our game to run at 60 frames-per-second
		//--------------------------------------------------------------------------------------

		// Main game loop
		while (!WindowShouldClose())        // Detect window close button or ESC key
		{
			// Update
			//----------------------------------------------------------------------------------
			UpdateCamera(camera);          // Update camera

			if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
			{
				ray = GetMouseRay(GetMousePosition(), camera);

				// Check collision between ray and box
				collision = CheckCollisionRayBox(ray, {
					min: { x: cubePosition.x - cubeSize.x/2, y: cubePosition.y - cubeSize.y/2, z: cubePosition.z - cubeSize.z/2 },
					max: { x: cubePosition.x + cubeSize.x/2, y: cubePosition.y + cubeSize.y/2, z: cubePosition.z + cubeSize.z/2 }
				});
			}
			//----------------------------------------------------------------------------------

			// Draw
			//----------------------------------------------------------------------------------
			BeginDrawing();

				ClearBackground(RAYWHITE);

				BeginMode3D(camera);

					if (collision)
					{
						DrawCube(cubePosition, cubeSize.x, cubeSize.y, cubeSize.z, RED);
						DrawCubeWires(cubePosition, cubeSize.x, cubeSize.y, cubeSize.z, MAROON);

						DrawCubeWires(cubePosition, cubeSize.x + 0.2, cubeSize.y + 0.2, cubeSize.z + 0.2, GREEN);
					}
					else
					{
						DrawCube(cubePosition, cubeSize.x, cubeSize.y, cubeSize.z, GRAY);
						DrawCubeWires(cubePosition, cubeSize.x, cubeSize.y, cubeSize.z, DARKGRAY);
					}

					DrawRay(ray, MAROON);
					DrawGrid(10, 1.0);

				EndMode3D();

				DrawText("Try selecting the box with mouse!", 240, 10, 20, DARKGRAY);

				if(collision) DrawText("BOX SELECTED", Std.int((screenWidth - MeasureText("BOX SELECTED", 30)) / 2), Std.int(screenHeight * 0.1), 30, GREEN);

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
