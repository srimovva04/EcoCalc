import 'package:flutter/material.dart';
import 'login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 10), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[600],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center vertically
          crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
          children: <Widget>[
            Image.asset('lib/images/ecocalc.png'), // Access asset image
            SizedBox(height: 20),  // Space between image and text
          Text(
            'EcoCalc',
            style: TextStyle(
              fontSize: 50,  // Even larger to make it stand out more
              fontWeight: FontWeight.w900,  // Ultra-bold for more impact
              fontFamily: 'Poppins',  // A clean, elegant sans-serif font
              color: Colors.white,  // Keeping it white for contrast
              letterSpacing: 3.0,  // Wide letter spacing for sophistication
              shadows: [
                Shadow(
                  offset: Offset(4.0, 4.0),  // Slightly stronger shadow for a 3D effect
                  blurRadius: 8.0,  // Softer shadow blur for more subtlety
                  color: Colors.black.withOpacity(0.6),  // Darker shadow for better depth
                ),
              ],
            ),
          ),
          ],
        ),
      ),
    );
  }
}
