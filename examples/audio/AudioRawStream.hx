/*******************************************************************************************
*
*   raylib [audio] example - Raw audio streaming
*
*   NOTE: This example requires OpenAL Soft library installed
*
*   This example has been created using raylib 1.6 (www.raylib.com)
*   raylib is licensed under an unmodified zlib/libpng license (View raylib.h for details)
*
*   Copyright (c) 2015-2018 Ramon Santamaria (@raysan5) and James Hofmann (@triplefox)
*
********************************************************************************************/

package examples.audio;

import raylib.Raylib;
import raylib.Raylib.*;

class AudioRawStream
{
	static inline var MAX_SAMPLES = 512;
	static inline var MAX_SAMPLES_PER_UPDATE = 4096;

	static function main()
	{
		// Initialization
		//--------------------------------------------------------------------------------------
		var screenWidth = 800;
		var screenHeight = 450;

		InitWindow(screenWidth, screenHeight, "raylib [audio] example - raw audio streaming");

		InitAudioDevice();              // Initialize audio device

		// Init raw audio stream (sample rate: 22050, sample size: 16bit-short, channels: 1-mono)
		var stream = InitAudioStream(22050, 16, 1);

		// Buffer for the single cycle waveform we are synthesizing
//		short *data = (short *)malloc(sizeof(short)*MAX_SAMPLES);

		// Frame buffer, describing the waveform when repeated over the course of a frame
//		short *writeBuf = (short *)malloc(sizeof(short)*MAX_SAMPLES_PER_UPDATE);

		PlayAudioStream(stream);        // Start processing stream buffer (no data loaded currently)

		// Position read in to determine next frequency
		var mousePosition = new Vector2(-100.0, -100.0);

		// Cycles per second (hz)
		var frequency = 440.0;

		// Previous value, used to test if sine needs to be rewritten, and to smoothly modulate frequency
		var oldFrequency = 1.0;

		// Cursor to read and copy the samples of the sine wave buffer
		var readCursor = 0;

		// Computed size in samples of the sine wave
		var waveLength = 1;

		var position = new Vector2(0, 0);

		SetTargetFPS(30);               // Set our game to run at 30 frames-per-second
		//--------------------------------------------------------------------------------------

		// Main game loop
		while (!WindowShouldClose())    // Detect window close button or ESC key
		{
			// Update
			//----------------------------------------------------------------------------------

			// Sample mouse input.
			mousePosition = GetMousePosition();

			if (IsMouseButtonDown(MOUSE_LEFT_BUTTON))
			{
				frequency = 40.0 + mousePosition.y;
			}

			// Rewrite the sine wave.
			// Compute two cycles to allow the buffer padding, simplifying any modulation, resampling, etc.
			if (frequency != oldFrequency)
			{
				// Compute wavelength. Limit size in both directions.
				var oldWavelength = waveLength;
				waveLength = Std.int(22050/frequency);
				if (waveLength > MAX_SAMPLES/2) waveLength = Std.int(MAX_SAMPLES/2);
				if (waveLength < 1) waveLength = 1;

				// Write sine wave.
				for (i in 0...waveLength*2)
				{
//					data[i] = (short)(sinf(((2*PI*(float)i/waveLength)))*32000);
				}

				// Scale read cursor's position to minimize transition artifacts
//				readCursor = (int)(readCursor * ((float)waveLength / (float)oldWavelength));
				oldFrequency = frequency;
			}

			// Refill audio stream if required
			if (IsAudioBufferProcessed(stream))
			{
				// Synthesize a buffer that is exactly the requested size
				var writeCursor = 0;

				while (writeCursor < MAX_SAMPLES_PER_UPDATE)
				{
					// Start by trying to write the whole chunk at once
					var writeLength = MAX_SAMPLES_PER_UPDATE-writeCursor;

					// Limit to the maximum readable size
					var readLength = waveLength-readCursor;

					if (writeLength > readLength) writeLength = readLength;

					// Write the slice
//					memcpy(writeBuf + writeCursor, data + readCursor, writeLength*sizeof(short));

					// Update cursors and loop audio
					readCursor = (readCursor + writeLength) % waveLength;

					writeCursor += writeLength;
				}

				// Copy finished frame to audio stream
//				UpdateAudioStream(stream, writeBuf, MAX_SAMPLES_PER_UPDATE);
			}
			//----------------------------------------------------------------------------------

			// Draw
			//----------------------------------------------------------------------------------
			BeginDrawing();

				ClearBackground(RAYWHITE);

				DrawText('sine frequency: $frequency', GetScreenWidth() - 220, 10, 20, RED);
				DrawText("click mouse button to change frequency", 10, 10, 20, DARKGRAY);

				// Draw the current buffer state proportionate to the screen
				for (i in 0...screenWidth)
				{
					position.x = i;
//					position.y = 250 + 50*data[Std.int(i*MAX_SAMPLES/screenWidth)]/32000;

					DrawPixelV(position, RED);
				}

			EndDrawing();
			//----------------------------------------------------------------------------------
		}

		// De-Initialization
		//--------------------------------------------------------------------------------------
//		free(data);                 // Unload sine wave data
//		free(writeBuf);             // Unload write buffer

		CloseAudioStream(stream);   // Close raw audio stream and delete buffers from RAM
		CloseAudioDevice();         // Close audio device (music streaming is automatically stopped)

		CloseWindow();              // Close window and OpenGL context
		//--------------------------------------------------------------------------------------
	}
}
