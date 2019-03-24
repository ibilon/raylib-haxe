/*******************************************************************************************
*
*   raylib [core] example - Custom logging
*
*   This example has been created using raylib 2.1 (www.raylib.com)
*   raylib is licensed under an unmodified zlib/libpng license (View raylib.h for details)
*
*   Copyright (c) 2018 Ramon Santamaria (@raysan5) and Pablo Marcos Oltra (@pamarcos)
*
********************************************************************************************/

package examples.core;

import raylib.Raylib;
import raylib.Raylib.*;

class CoreCustomLogging
{
	// Custom logging funtion
	static function LogCustom(msgType:TraceLogType, text:String)
	{
		Sys.print('[${Date.now().toString()}]');

		switch (msgType)
		{
			case LOG_INFO: Sys.print("[INFO] : ");
			case LOG_ERROR: Sys.print("[ERROR]: ");
			case LOG_WARNING: Sys.print("[WARN] : ");
			case LOG_DEBUG: Sys.print("[DEBUG]: ");
			default:
		}

		Sys.println(text);
	}

	static function main()
	{
		// Initialization
		//--------------------------------------------------------------------------------------
		var screenWidth = 800;
		var screenHeight = 450;

		// First thing we do is setting our custom logger to ensure everything raylib logs
		// will use our own logger instead of its internal one
		SetTraceLogCallback(LogCustom);

		InitWindow(screenWidth, screenHeight, "raylib [core] example - custom logging");

		SetTargetFPS(60);
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

			DrawText("Check out the console output to see the custom logger in action!", 60, 200, 20, LIGHTGRAY);

			EndDrawing();
			//----------------------------------------------------------------------------------
		}

		// De-Initialization
		//--------------------------------------------------------------------------------------
		CloseWindow();        // Close window and OpenGL context
		//--------------------------------------------------------------------------------------
	}
}
