import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PlaybackControls(),
    );
  }
}

class PlaybackControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Album Art (You can replace this with the actual artwork)
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey, // Placeholder color
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                Icons.music_note,
                size: 100,
                color: Colors.white,
              ), // Replace with album artwork image
            ),
            SizedBox(height: 20),
            Text(
              'Song Title - Artist',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.skip_previous),
                  iconSize: 36,
                  onPressed: () {
                    // Implement previous track functionality
                  },
                ),
                IconButton(
                  icon: Icon(Icons.play_arrow),
                  iconSize: 48,
                  onPressed: () {
                    // Implement play functionality
                  },
                ),
                IconButton(
                  icon: Icon(Icons.pause),
                  iconSize: 48,
                  onPressed: () {
                    // Implement pause functionality
                  },
                ),
                IconButton(
                  icon: Icon(Icons.stop),
                  iconSize: 36,
                  onPressed: () {
                    // Implement stop functionality
                  },
                ),
                IconButton(
                  icon: Icon(Icons.skip_next),
                  iconSize: 36,
                  onPressed: () {
                    // Implement next track functionality
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('0:00'), // Current playback position
                  Text(
                      '3:45'), // Total track duration (replace with actual duration)
                ],
              ),
            ),
            Slider(
              value:
                  0.4, // Adjust this value to reflect the current playback position
              onChanged: (double value) {
                // Implement seek functionality
              },
            ),
          ],
        ),
      ),
    );
  }
}
