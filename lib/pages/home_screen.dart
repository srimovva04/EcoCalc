import 'package:flutter/material.dart';
import 'carbon_footprint_screen.dart';
import '../../pages/progress_tracking_screen.dart';
import 'challenges_screen.dart';
import 'educational_resources_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EcoCalc - Home'),
        backgroundColor: Colors.green[600],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            // Carbon Footprint Calculation
            _buildInteractiveCard(
              context,
              title: 'Calculate Carbon Footprint',
              icon: Icons.calculate,
              screen: CarbonFootprintScreen(),
            ),

            // Track Progress
            _buildInteractiveCard(
              context,
              title: 'Track Progress',
              icon: Icons.trending_up,
              screen: ProgressTrackingScreen(),
            ),

            // Sustainability Challenges
            _buildInteractiveCard(
              context,
              title: 'Sustainability Challenges',
              icon: Icons.campaign,
              screen: ChallengesScreen(),
            ),

            // Educational Resources
            _buildInteractiveCard(
              context,
              title: 'Educational Resources',
              icon: Icons.library_books,
              screen: EducationalResourcesScreen(),
            ),

            // Explore More Button (Highlighting the CTA)
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                backgroundColor: Colors.green[600],  // Button color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 5,
                shadowColor: Colors.green[300],
              ),
              onPressed: () {
                // Navigate to a different section or perform an action
              },
              child: Text(
                'Explore More Eco-Friendly Options',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build interactive cards with a ripple effect
  Widget _buildInteractiveCard(BuildContext context, {
    required String title,
    required IconData icon,
    required Widget screen,
  }) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      splashColor: Colors.green[200], // Ripple color
      borderRadius: BorderRadius.circular(12.0), // Rounded corners
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        height: 90,
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.green.withOpacity(0.1),
              spreadRadius: 3,
              blurRadius: 8,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: ListTile(
          contentPadding: EdgeInsets.all(16),
          title: Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green[50],
            ),
            child: Icon(
              icon,
              size: 40,
              color: Colors.green[600],
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward,
            color: Colors.green[600],
          ),
        ),
      ),
    );
  }
}
