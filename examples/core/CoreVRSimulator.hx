/*******************************************************************************************
*
*   raylib [core] example - VR Simulator (Oculus Rift CV1 parameters)
*
*   This example has been created using raylib 1.7 (www.raylib.com)
*   raylib is licensed under an unmodified zlib/libpng license (View raylib.h for details)
*
*   Copyright (c) 2017 Ramon Santamaria (@raysan5)
*
********************************************************************************************/

package examples.core;

import raylib.Raylib;
import raylib.Raylib.*;

class CoreVRSimulator
{
	static function main()
	{
		// Initialization
		//--------------------------------------------------------------------------------------
		var screenWidth = 1080;
		var screenHeight = 600;

		// NOTE: screenWidth/screenHeight should match VR device aspect ratio

		InitWindow(screenWidth, screenHeight, "raylib [core] example - vr simulator");

		// Init VR simulator (Oculus Rift CV1 parameters)
		InitVrSimulator(GetVrDeviceInfo(HMD_OCULUS_RIFT_CV1));

		// Define the camera to look into our 3d world
		var camera = new Camera3D(
			new Vector3(5.0, 2.0, 5.0),
			new Vector3(0.0, 2.0, 0.0),
			new Vector3(0.0, 1.0, 0.0),
			60.0,
			CAMERA_PERSPECTIVE
		);

		var cubePosition = new Vector3(0.0, 0.0, 0.0);

		SetCameraMode(camera, CAMERA_FIRST_PERSON);         // Set first person camera mode

		SetTargetFPS(90);                   // Set our game to run at 90 frames-per-second
		//--------------------------------------------------------------------------------------

		// Main game loop
		while (!WindowShouldClose())        // Detect window close button or ESC key
		{
			// Update
			//----------------------------------------------------------------------------------
			UpdateCamera(camera);          // Update camera (simulator mode)

			if (IsKeyPressed(KEY_SPACE)) ToggleVrMode();    // Toggle VR mode
			//----------------------------------------------------------------------------------

			// Draw
			//----------------------------------------------------------------------------------
			BeginDrawing();

				ClearBackground(RAYWHITE);

				BeginVrDrawing();

					BeginMode3D(camera);

						DrawCube(cubePosition, 2.0, 2.0, 2.0, RED);
						DrawCubeWires(cubePosition, 2.0, 2.0, 2.0, MAROON);

						DrawGrid(40, 1.0);

					EndMode3D();

				EndVrDrawing();

				DrawFPS(10, 10);

			EndDrawing();
			//----------------------------------------------------------------------------------
		}

		// De-Initialization
		//--------------------------------------------------------------------------------------
		CloseVrSimulator();     // Close VR simulator

		CloseWindow();          // Close window and OpenGL context
		//--------------------------------------------------------------------------------------
	}
}
