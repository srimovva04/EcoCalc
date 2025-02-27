import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class AREducationalScreen extends StatefulWidget {
  @override
  _AREducationalScreenState createState() => _AREducationalScreenState();
}

class _AREducationalScreenState extends State<AREducationalScreen> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    )..forward(); // Start animation immediately

    _slideAnimation = Tween<Offset>(
      begin: Offset(0, 1), // start from bottom
      end: Offset.zero, // end at original position
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));

    _fadeAnimation = Tween<double>(
      begin: 0.0, // start fully transparent
      end: 1.0,  // end fully opaque
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));

    _scaleAnimation = Tween<double>(
      begin: 0.5, // start smaller
      end: 1.0,  // end at normal size
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Augmented Reality Education'),
        backgroundColor: Colors.green[600],
        // Slide-in effect for AppBar title
        flexibleSpace: SlideTransition(
          position: _slideAnimation,
          child: Container(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Animated floating AR icon
            ScaleTransition(
              scale: _scaleAnimation,
              child: Icon(
                Icons.image, // Placeholder for AR icon
                size: 100,
                color: Colors.green[600],
              ),
            ),
            SizedBox(height: 30),
            // Fade-in text for educational content
            FadeTransition(
              opacity: _fadeAnimation,
              child: Text(
                'Learn How AR Can Help with Carbon Footprint Calculation!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            // Instruction or Button related to Carbon Footprint
            FadeTransition(
              opacity: _fadeAnimation,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Action to open carbon footprint calculator
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green[600]),
                  child: Text(
                    'Calculate Your Carbon Footprint',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}





// import 'package:flutter/material.dart';
//
// class AREducationalScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Augmented Reality Education'),
//         backgroundColor: Colors.green[600],
//       ),
//       body: Center(
//         child: Text('AR Features Coming Soon!'),
//       ),
//     );
//   }
// }
