/*******************************************************************************************
*
*   raylib example - procedural mesh generation
*
*   This example has been created using raylib 1.8 (www.raylib.com)
*   raylib is licensed under an unmodified zlib/libpng license (View raylib.h for details)
*
*   Copyright (c) 2017 Ramon Santamaria (Ray San)
*
********************************************************************************************/

package examples.models;

import raylib.Raylib;
import raylib.Raylib.*;

class ModelsMeshGeneration
{
	static inline var NUM_MODELS = 8;      // We generate 8 parametric 3d shapes

	static function main()
	{
		// Initialization
		//--------------------------------------------------------------------------------------
		var screenWidth = 800;
		var screenHeight = 450;

		InitWindow(screenWidth, screenHeight, "raylib [models] example - mesh generation");

		// We generate a checked image for texturing
		var checked = GenImageChecked(2, 2, 1, 1, RED, GREEN);
		var texture = LoadTextureFromImage(checked);
		UnloadImage(checked);

		var models = [];

		models[0] = LoadModelFromMesh(GenMeshPlane(2, 2, 5, 5));
		models[1] = LoadModelFromMesh(GenMeshCube(2.0, 1.0, 2.0));
		models[2] = LoadModelFromMesh(GenMeshSphere(2, 32, 32));
		models[3] = LoadModelFromMesh(GenMeshHemiSphere(2, 16, 16));
		models[4] = LoadModelFromMesh(GenMeshCylinder(1, 2, 16));
		models[5] = LoadModelFromMesh(GenMeshTorus(0.25, 4.0, 16, 32));
		models[6] = LoadModelFromMesh(GenMeshKnot(1.0, 2.0, 16, 128));
		models[7] = LoadModelFromMesh(GenMeshPoly(5, 2.0));

		// Set checked texture as default diffuse component for all models material
		for (i in 0...NUM_MODELS)
		{
			var m = models[i];
			var mm = m.material.maps[MAP_DIFFUSE];
			mm.texture = untyped __cpp__("{0}.value", texture);
			m.material.maps[MAP_DIFFUSE] = mm;
			models[i] = m;
		}

		// Define the camera to look into our 3d world
		var camera = new Camera3D(
			new Vector3(5.0, 5.0, 5.0),
			new Vector3(0.0, 0.0, 0.0),
			new Vector3(0.0, 1.0, 0.0),
			45.0,
			CAMERA_PERSPECTIVE
		);

		// Model drawing position
		var position = new Vector3(0.0, 0.0, 0.0);

		var currentModel = 0;

		SetCameraMode(camera, CAMERA_ORBITAL);  // Set a orbital camera mode

		SetTargetFPS(60);                       // Set our game to run at 60 frames-per-second
		//--------------------------------------------------------------------------------------

		// Main game loop
		while (!WindowShouldClose())    // Detect window close button or ESC key
		{
			// Update
			//----------------------------------------------------------------------------------
			UpdateCamera(camera);      // Update internal camera and our camera

			if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
			{
				currentModel = (currentModel + 1)%NUM_MODELS; // Cycle between the textures
			}
			//----------------------------------------------------------------------------------

			// Draw
			//----------------------------------------------------------------------------------
			BeginDrawing();

				ClearBackground(RAYWHITE);

				BeginMode3D(camera);

					DrawModel(models[currentModel], position, 1.0, WHITE);

					DrawGrid(10, 1.0);

				EndMode3D();

				DrawRectangle(30, 400, 310, 30, Fade(SKYBLUE, 0.5));
				DrawRectangleLines(30, 400, 310, 30, Fade(DARKBLUE, 0.5));
				DrawText("MOUSE LEFT BUTTON to CYCLE PROCEDURAL MODELS", 40, 410, 10, BLUE);

				switch(currentModel)
				{
					case 0: DrawText("PLANE", 680, 10, 20, DARKBLUE);
					case 1: DrawText("CUBE", 680, 10, 20, DARKBLUE);
					case 2: DrawText("SPHERE", 680, 10, 20, DARKBLUE);
					case 3: DrawText("HEMISPHERE", 640, 10, 20, DARKBLUE);
					case 4: DrawText("CYLINDER", 680, 10, 20, DARKBLUE);
					case 5: DrawText("TORUS", 680, 10, 20, DARKBLUE);
					case 6: DrawText("KNOT", 680, 10, 20, DARKBLUE);
					case 7: DrawText("POLY", 680, 10, 20, DARKBLUE);
					default:
				}

			EndDrawing();
			//----------------------------------------------------------------------------------
		}

		// De-Initialization
		//--------------------------------------------------------------------------------------

		// Unload models data (GPU VRAM)
		for (i in 0...NUM_MODELS) UnloadModel(models[i]);

		CloseWindow();        // Close window and OpenGL context
		//--------------------------------------------------------------------------------------
	}
}
