/*******************************************************************************************
*
*   raylib [audio] example - Module playing (streaming)
*
*   NOTE: This example requires OpenAL Soft library installed
*
*   This example has been created using raylib 1.5 (www.raylib.com)
*   raylib is licensed under an unmodified zlib/libpng license (View raylib.h for details)
*
*   Copyright (c) 2016 Ramon Santamaria (@raysan5)
*
********************************************************************************************/

package examples.audio;

import raylib.Raylib;
import raylib.Raylib.*;

class AudioModulePlaying
{
	static inline var MAX_CIRCLES = 64;

	static function main()
	{
		// Initialization
		//--------------------------------------------------------------------------------------
		var screenWidth = 800;
		var screenHeight = 450;

		SetConfigFlags(FLAG_MSAA_4X_HINT);  // NOTE: Try to enable MSAA 4X

		InitWindow(screenWidth, screenHeight, "raylib [audio] example - module playing (streaming)");

		InitAudioDevice();                  // Initialize audio device

		var colors = [ ORANGE, RED, GOLD, LIME, BLUE, VIOLET, BROWN, LIGHTGRAY, PINK,
							YELLOW, GREEN, SKYBLUE, PURPLE, BEIGE ];

		// Creates ome circles for visual effect
		var circles = [];

		var i = MAX_CIRCLES;
		while (--i >= 0)
		{
			var radius = GetRandomValue(10, 40);

			circles[i] = {
				alpha: 0.0,
				radius: radius,
				position: new Vector2(
					GetRandomValue(radius, screenWidth - radius),
					GetRandomValue(radius, screenHeight - radius)
				),
				speed: GetRandomValue(1, 100)/20000.0,
				color: colors[GetRandomValue(0, 13)]
			};
		}

		var xm = LoadMusicStream("lib/examples/audio/resources/chiptun1.mod");

		PlayMusicStream(xm);

		var timePlayed = 0.0;
		var pause = false;

		SetTargetFPS(60);               // Set our game to run at 60 frames-per-second
		//--------------------------------------------------------------------------------------

		// Main game loop
		while (!WindowShouldClose())    // Detect window close button or ESC key
		{
			// Update
			//----------------------------------------------------------------------------------
			UpdateMusicStream(xm);        // Update music buffer with new stream data

			// Restart music playing (stop and play)
			if (IsKeyPressed(KEY_SPACE))
			{
				StopMusicStream(xm);
				PlayMusicStream(xm);
			}

			// Pause/Resume music playing
			if (IsKeyPressed(KEY_P))
			{
				pause = !pause;

				if (pause) PauseMusicStream(xm);
				else ResumeMusicStream(xm);
			}

			// Get timePlayed scaled to bar dimensions
			timePlayed = GetMusicTimePlayed(xm)/GetMusicTimeLength(xm)*(screenWidth - 40);

			// Color circles animation
			var i = MAX_CIRCLES;
			while (!pause && --i >= 0)
			{
				circles[i].alpha += circles[i].speed;
				circles[i].radius += Std.int(circles[i].speed*10.0);

				if (circles[i].alpha > 1.0) circles[i].speed *= -1;

				if (circles[i].alpha <= 0.0)
				{
					circles[i].alpha = 0.0;
					circles[i].radius = GetRandomValue(10, 40);
					circles[i].position.x = GetRandomValue(circles[i].radius, screenWidth - circles[i].radius);
					circles[i].position.y = GetRandomValue(circles[i].radius, screenHeight - circles[i].radius);
					circles[i].color = colors[GetRandomValue(0, 13)];
					circles[i].speed = GetRandomValue(1, 100)/20000.0;
				}
			}
			//----------------------------------------------------------------------------------

			// Draw
			//----------------------------------------------------------------------------------
			BeginDrawing();

				ClearBackground(RAYWHITE);

				var i = MAX_CIRCLES;
				while (--i >= 0)
				{
					DrawCircleV(circles[i].position, circles[i].radius, Fade(circles[i].color, circles[i].alpha));
				}

				// Draw time bar
				DrawRectangle(20, screenHeight - 20 - 12, screenWidth - 40, 12, LIGHTGRAY);
				DrawRectangle(20, screenHeight - 20 - 12, Std.int(timePlayed), 12, MAROON);
				DrawRectangleLines(20, screenHeight - 20 - 12, screenWidth - 40, 12, GRAY);

			EndDrawing();
			//----------------------------------------------------------------------------------
		}

		// De-Initialization
		//--------------------------------------------------------------------------------------
		UnloadMusicStream(xm);          // Unload music stream buffers from RAM

		CloseAudioDevice();     // Close audio device (music streaming is automatically stopped)

		CloseWindow();          // Close window and OpenGL context
		//--------------------------------------------------------------------------------------
	}
}
