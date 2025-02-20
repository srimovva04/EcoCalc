import 'package:flutter/material.dart';

class ProgressTrackingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Track Your Progress'),
        backgroundColor: Colors.green[600],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Fun Title with a playful font
              Text(
                'Your Carbon Footprint Reduction',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[700],
                  fontFamily: 'Pacifico', // Fun font
                ),
              ),
              SizedBox(height: 30),

              // Circular Progress Indicator for a more playful look
              CircularProgressIndicator(
                value: 0.6,
                strokeWidth: 10,
                valueColor: AlwaysStoppedAnimation(Colors.green[600]),
              ),
              SizedBox(height: 20),

              // Fun Progress text with bold and modern styling
              Text(
                '60% Reduction Achieved!',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.green[600],
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto', // Modern font
                ),
              ),
              SizedBox(height: 40),

              // New Progress Bars for different categories
              _buildProgressCard('Water Consumption', 0.4, Icons.water_drop),
              SizedBox(height: 20),
              _buildProgressCard('Energy Usage', 0.75, Icons.flash_on),
              SizedBox(height: 20),
              _buildProgressCard('Recycling Efforts', 0.9, Icons.recycling),
              SizedBox(height: 40),

              // Display Achievements (Milestones/Badges)
              _buildAchievementBadge('Eco Warrior', Icons.eco),
              SizedBox(height: 20),

              // Interactive Button to keep track of progress
              ElevatedButton(
                onPressed: () {
                  // Action for button press (could navigate or perform an action)
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  backgroundColor: Colors.green[600],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 5,
                ),
                child: Text(
                  'Keep Going!',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to build a progress bar card with icon and category name
  Widget _buildProgressCard(String title, double progress, IconData icon) {
    return Card(
      elevation: 5,
      shadowColor: Colors.green[300],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: Colors.green[50],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: <Widget>[
            Icon(icon, size: 40, color: Colors.green[600]),
            SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[600],
                    ),
                  ),
                  SizedBox(height: 10),
                  LinearProgressIndicator(
                    value: progress,
                    backgroundColor: Colors.green[100],
                    color: Colors.green[600],
                    minHeight: 8,
                  ),
                  SizedBox(height: 10),
                  Text(
                    '${(progress * 100).toInt()}% Achieved',
                    style: TextStyle(color: Colors.green[600]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to display an achievement badge
  Widget _buildAchievementBadge(String title, IconData icon) {
    return Card(
      elevation: 5,
      shadowColor: Colors.green[300],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: Colors.green[50],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: <Widget>[
            Icon(icon, size: 40, color: Colors.green[600]),
            SizedBox(width: 20),
            Text(
              title,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.green[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
