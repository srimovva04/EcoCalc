import 'package:eco/pages/signup.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart'; // Update with actual import if needed

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              // App name at the top
              Center(
                child: Text(
                  ' EcoCalc ',
                  style: TextStyle(
                    fontSize: 50,  // Even larger to make it stand out more
                    fontWeight: FontWeight.w900,  // Ultra-bold for more impact
                    fontFamily: 'Poppins',  // A clean, elegant sans-serif font
                    color: Colors.green[600],  // Keeping it white for contrast
                    letterSpacing: 3.0,  // Wide letter spacing for sophistication
                    shadows: [
                      Shadow(
                        offset: Offset(4.0, 4.0),  // Slightly stronger shadow for a 3D effect
                        blurRadius: 8.0,  // Softer shadow blur for more subtlety
                        color: Colors.green.withOpacity(0.6),  // Darker shadow for better depth
                      ),
                    ],
                  ),
                ),
              ),
              // Welcome message
              Text(
                'Welcome Back!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[600],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),

              // Email input
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.green[600]),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Password input
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.green[600]),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 30),

              // Login Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  backgroundColor: Colors.green[600],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 5,
                  shadowColor: Colors.green[300],
                ),
                onPressed: () {
                  // Navigate to HomeScreen or dashboard
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              SizedBox(height: 20),

              // SignUp Link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Don\'t have an account?',
                    style: TextStyle(fontSize: 18), // Adjust font size here
                  ),
                  TextButton(
                    onPressed: () {
                      // Navigate to SignUp Screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()),
                      );
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.green[600],
                        fontSize: 18, // Adjust font size here
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
