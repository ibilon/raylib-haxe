/*******************************************************************************************
*
*   raylib [core] example - 2d camera
*
*   This example has been created using raylib 1.5 (www.raylib.com)
*   raylib is licensed under an unmodified zlib/libpng license (View raylib.h for details)
*
*   Copyright (c) 2016 Ramon Santamaria (@raysan5)
*
********************************************************************************************/

package examples.core;

import raylib.Raylib;
import raylib.Raylib.*;

class Core2DCamera
{
	static inline var MAX_BUILDINGS = 100;

	static function main()
	{
		// Initialization
		//--------------------------------------------------------------------------------------
		var screenWidth = 800;
		var screenHeight = 450;

		InitWindow(screenWidth, screenHeight, "raylib [core] example - 2d camera");

		var player = { x: 400, y: 280, width: 40, height: 40 };
		var buildings = [];
		var buildColors = [];

		var spacing = 0.0;

		for (i in 0...MAX_BUILDINGS)
		{
			var height = GetRandomValue(100, 800);

			buildings[i] = {
				width: GetRandomValue(50, 200),
				height: height,
				y: screenHeight - 130 - height,
				x: -6000 + spacing
			};

			spacing += buildings[i].width;

			buildColors[i] = { r: GetRandomValue(200, 240), g: GetRandomValue(200, 240), b: GetRandomValue(200, 250), a: 255 };
		}

		var camera = {
			target: { x: player.x + 20, y: player.y + 20 },
			offset: { x: 0, y: 0 },
			rotation: 0.0,
			zoom: 1.0
		};

		SetTargetFPS(60);
		//--------------------------------------------------------------------------------------

		// Main game loop
		while (!WindowShouldClose())    // Detect window close button or ESC key
		{
			// Update
			//----------------------------------------------------------------------------------
			if (IsKeyDown(KEY_RIGHT))
			{
				player.x += 2;              // Player movement
				camera.offset.x -= 2;       // Camera displacement with player movement
			}
			else if (IsKeyDown(KEY_LEFT))
			{
				player.x -= 2;              // Player movement
				camera.offset.x += 2;       // Camera displacement with player movement
			}

			// Camera target follows player
			camera.target = { x: player.x + 20, y: player.y + 20 };

			// Camera rotation controls
			if (IsKeyDown(KEY_A)) camera.rotation--;
			else if (IsKeyDown(KEY_S)) camera.rotation++;

			// Limit camera rotation to 80 degrees (-40 to 40)
			if (camera.rotation > 40) camera.rotation = 40;
			else if (camera.rotation < -40) camera.rotation = -40;

			// Camera zoom controls
			camera.zoom += GetMouseWheelMove() * 0.05;

			if (camera.zoom > 3.0) camera.zoom = 3.0;
			else if (camera.zoom < 0.1) camera.zoom = 0.1;

			// Camera reset (zoom and rotation)
			if (IsKeyPressed(KEY_R))
			{
				camera.zoom = 1.0;
				camera.rotation = 0.0;
			}
			//----------------------------------------------------------------------------------

			// Draw
			//----------------------------------------------------------------------------------
			BeginDrawing();

				ClearBackground(RAYWHITE);

				BeginMode2D(camera);

					DrawRectangle(-6000, 320, 13000, 8000, DARKGRAY);

					for (i in 0...MAX_BUILDINGS) DrawRectangleRec(buildings[i], buildColors[i]);

					DrawRectangleRec(player, RED);

					DrawLine(Std.int(camera.target.x), -screenHeight*10, Std.int(camera.target.x), screenHeight*10, GREEN);
					DrawLine(-screenWidth*10, Std.int(camera.target.y), screenWidth*10, Std.int(camera.target.y), GREEN);

				EndMode2D();

				DrawText("SCREEN AREA", 640, 10, 20, RED);

				DrawRectangle(0, 0, screenWidth, 5, RED);
				DrawRectangle(0, 5, 5, screenHeight - 10, RED);
				DrawRectangle(screenWidth - 5, 5, 5, screenHeight - 10, RED);
				DrawRectangle(0, screenHeight - 5, screenWidth, 5, RED);

				DrawRectangle( 10, 10, 250, 113, Fade(SKYBLUE, 0.5));
				DrawRectangleLines( 10, 10, 250, 113, BLUE);

				DrawText("Free 2d camera controls:", 20, 20, 10, BLACK);
				DrawText("- Right/Left to move Offset", 40, 40, 10, DARKGRAY);
				DrawText("- Mouse Wheel to Zoom in-out", 40, 60, 10, DARKGRAY);
				DrawText("- A / S to Rotate", 40, 80, 10, DARKGRAY);
				DrawText("- R to reset Zoom and Rotation", 40, 100, 10, DARKGRAY);

			EndDrawing();
			//----------------------------------------------------------------------------------
		}

		// De-Initialization
		//--------------------------------------------------------------------------------------
		CloseWindow();        // Close window and OpenGL context
		//--------------------------------------------------------------------------------------

		return 0;
	}
}
