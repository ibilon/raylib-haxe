/*******************************************************************************************
*
*   raylib [models] example - Heightmap loading and drawing
*
*   This example has been created using raylib 1.8 (www.raylib.com)
*   raylib is licensed under an unmodified zlib/libpng license (View raylib.h for details)
*
*   Copyright (c) 2015 Ramon Santamaria (@raysan5)
*
********************************************************************************************/

package examples.models;

import raylib.Raylib;
import raylib.Raylib.*;

class ModelHeightmap
{
	static function main()
	{
		// Initialization
		//--------------------------------------------------------------------------------------
		var screenWidth = 800;
		var screenHeight = 450;

		InitWindow(screenWidth, screenHeight, "raylib [models] example - heightmap loading and drawing");

		// Define our custom camera to look into our 3d world
		var camera = new Camera(
			new Vector3(18.0, 16.0, 18.0),
			new Vector3(0.0, 0.0, 0.0),
			new Vector3(0.0, 1.0, 0.0),
			45.0,
			CAMERA_PERSPECTIVE
		);

		var image = LoadImage("resources/heightmap.png");             // Load heightmap image (RAM)
		var texture = LoadTextureFromImage(image);                // Convert image to texture (VRAM)

		var mesh = GenMeshHeightmap(image, new Vector3(16, 8, 16));    // Generate heightmap mesh (RAM and VRAM)
		var model = LoadModelFromMesh(mesh);                          // Load model from generated mesh

		model.material.maps[MAP_DIFFUSE].texture = texture;             // Set map diffuse texture
		var mapPosition = new Vector3(-8.0, 0.0, -8.0);                   // Define model position

		UnloadImage(image);                     // Unload heightmap image from RAM, already uploaded to VRAM

		SetCameraMode(camera, CAMERA_ORBITAL);  // Set an orbital camera mode

		SetTargetFPS(60);                       // Set our game to run at 60 frames-per-second
		//--------------------------------------------------------------------------------------

		// Main game loop
		while (!WindowShouldClose())            // Detect window close button or ESC key
		{
			// Update
			//----------------------------------------------------------------------------------
			UpdateCamera(camera);              // Update camera
			//----------------------------------------------------------------------------------

			// Draw
			//----------------------------------------------------------------------------------
			BeginDrawing();

				ClearBackground(RAYWHITE);

				BeginMode3D(camera);

					DrawModel(model, mapPosition, 1.0, RED);

					DrawGrid(20, 1.0);

				EndMode3D();

				DrawTexture(texture, Std.int(screenWidth - texture.width - 20), 20, WHITE);
				DrawRectangleLines(Std.int(screenWidth - texture.width - 20), 20, texture.width, texture.height, GREEN);

				DrawFPS(10, 10);

			EndDrawing();
			//----------------------------------------------------------------------------------
		}

		// De-Initialization
		//--------------------------------------------------------------------------------------
		UnloadTexture(texture);     // Unload texture
		UnloadModel(model);         // Unload model

		CloseWindow();              // Close window and OpenGL context
		//--------------------------------------------------------------------------------------
	}
}
