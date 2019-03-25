/*******************************************************************************************
*
*   raylib [core] example - Gestures Detection
*
*   This example has been created using raylib 1.4 (www.raylib.com)
*   raylib is licensed under an unmodified zlib/libpng license (View raylib.h for details)
*
*   Copyright (c) 2016 Ramon Santamaria (@raysan5)
*
********************************************************************************************/

package examples.core;

import raylib.Raylib;
import raylib.Raylib.*;

class CoreGestureDetection
{
	static inline var MAX_GESTURE_STRINGS = 20;

	static function main()
	{
		// Initialization
		//--------------------------------------------------------------------------------------
		var screenWidth = 800;
		var screenHeight = 450;

		InitWindow(screenWidth, screenHeight, "raylib [core] example - gestures detection");

		var touchPosition = new Vector2(0, 0);
		var touchArea = new Rectangle(220, 10, screenWidth - 230, screenHeight - 20);

		var gesturesCount = 0;
		var gestureStrings = [for (i in 0...MAX_GESTURE_STRINGS) ""];

		var currentGesture = GESTURE_NONE;
		var lastGesture = GESTURE_NONE;

		//SetGesturesEnabled(0b0000000000001001);   // Enable only some gestures to be detected

		SetTargetFPS(60);
		//--------------------------------------------------------------------------------------

		// Main game loop
		while (!WindowShouldClose())    // Detect window close button or ESC key
		{
			// Update
			//----------------------------------------------------------------------------------
			lastGesture = currentGesture;
			currentGesture = GetGestureDetected();
			touchPosition = GetTouchPosition(0);

			if (CheckCollisionPointRec(touchPosition, touchArea) && (currentGesture != GESTURE_NONE))
			{
				if (currentGesture != lastGesture)
				{
					// Store gesture string
					switch (currentGesture)
					{
						case GESTURE_TAP: gestureStrings[gesturesCount] = "GESTURE TAP";
						case GESTURE_DOUBLETAP: gestureStrings[gesturesCount] = "GESTURE DOUBLETAP";
						case GESTURE_HOLD: gestureStrings[gesturesCount] = "GESTURE HOLD";
						case GESTURE_DRAG: gestureStrings[gesturesCount] = "GESTURE DRAG";
						case GESTURE_SWIPE_RIGHT: gestureStrings[gesturesCount] = "GESTURE SWIPE RIGHT";
						case GESTURE_SWIPE_LEFT: gestureStrings[gesturesCount] = "GESTURE SWIPE LEFT";
						case GESTURE_SWIPE_UP: gestureStrings[gesturesCount] = "GESTURE SWIPE UP";
						case GESTURE_SWIPE_DOWN: gestureStrings[gesturesCount] = "GESTURE SWIPE DOWN";
						case GESTURE_PINCH_IN: gestureStrings[gesturesCount] = "GESTURE PINCH IN";
						case GESTURE_PINCH_OUT: gestureStrings[gesturesCount] = "GESTURE PINCH OUT";
						default:
					}

					gesturesCount++;

					// Reset gestures strings
					if (gesturesCount >= MAX_GESTURE_STRINGS)
					{
						for (i in 0...MAX_GESTURE_STRINGS) gestureStrings[i] = "";

						gesturesCount = 0;
					}
				}
			}
			//----------------------------------------------------------------------------------

			// Draw
			//----------------------------------------------------------------------------------
			BeginDrawing();

				ClearBackground(RAYWHITE);

				DrawRectangleRec(touchArea, GRAY);
				DrawRectangle(225, 15, screenWidth - 240, screenHeight - 30, RAYWHITE);

				DrawText("GESTURES TEST AREA", screenWidth - 270, screenHeight - 40, 20, Fade(GRAY, 0.5));

				for (i in 0...gesturesCount)
				{
					if (i%2 == 0) DrawRectangle(10, 30 + 20*i, 200, 20, Fade(LIGHTGRAY, 0.5));
					else DrawRectangle(10, 30 + 20*i, 200, 20, Fade(LIGHTGRAY, 0.3));

					if (i < gesturesCount - 1) DrawText(gestureStrings[i], 35, 36 + 20*i, 10, DARKGRAY);
					else DrawText(gestureStrings[i], 35, 36 + 20*i, 10, MAROON);
				}

				DrawRectangleLines(10, 29, 200, screenHeight - 50, GRAY);
				DrawText("DETECTED GESTURES", 50, 15, 10, GRAY);

				if (currentGesture != GESTURE_NONE) DrawCircleV(touchPosition, 30, MAROON);

			EndDrawing();
			//----------------------------------------------------------------------------------
		}

		// De-Initialization
		//--------------------------------------------------------------------------------------
		CloseWindow();        // Close window and OpenGL context
		//--------------------------------------------------------------------------------------
	}
}
