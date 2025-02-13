import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class CarbonFootprintScreen extends StatefulWidget {
  @override
  _CarbonFootprintScreenState createState() => _CarbonFootprintScreenState();
}

class _CarbonFootprintScreenState extends State<CarbonFootprintScreen> with TickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();

  final energyController = TextEditingController();
  final distanceController = TextEditingController();
  final wasteController = TextEditingController();

  late AnimationController _buttonAnimationController;

  @override
  void initState() {
    super.initState();
    _buttonAnimationController = AnimationController(
      duration: Duration(milliseconds: 300),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _buttonAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculate Carbon Footprint'),
        backgroundColor: Colors.green[600],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView( // Allows for scrolling if keyboard pops up
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Fun title
                _buildTitle(),

                SizedBox(height: 16),

                // Energy Consumption Field
                _buildTextField(
                  controller: energyController,
                  label: 'Energy Consumption (kWh)',
                  icon: Icons.bolt,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your energy consumption';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16),

                // Distance Travelled Field
                _buildTextField(
                  controller: distanceController,
                  label: 'Distance Travelled (km)',
                  icon: Icons.directions_car,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter the distance travelled';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16),

                // Waste Production Field
                _buildTextField(
                  controller: wasteController,
                  label: 'Waste Production (kg)',
                  icon: Icons.delete_outline,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your waste production';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),

                // Calculate Button
                _buildCalculateButton(),
                SizedBox(height: 20),

                // Fun fact or feedback after calculation (empty for now)
                _buildFunFact(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Center(
      child: Text(
        'Let\'s Calculate Your Carbon Footprint!',
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Colors.green[600],
          fontFamily: 'Poppins', // Fun, modern font
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    required TextInputType keyboardType,
    required String? Function(String?) validator,
  }) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon, color: Colors.green[600]),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.green[600]!),
        ),
        errorStyle: TextStyle(color: Colors.red[700]),
        filled: true,
        fillColor: Colors.green[50],
      ),
      keyboardType: keyboardType,
      validator: validator,
    );
  }

  Widget _buildCalculateButton() {
    return Center(
      child: GestureDetector(
        onTap: () {
          if (_formKey.currentState!.validate()) {
            // Play button animation
            _buttonAnimationController.forward().then((value) {
              _buttonAnimationController.reverse();
            });

            // Simulate feedback (can be replaced with actual calculation logic)
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Calculating your carbon footprint...')),
            );
          }
        },
        child: AnimatedBuilder(
          animation: _buttonAnimationController,
          builder: (context, child) {
            return Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.green[600],
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.green.withOpacity(0.3),
                    blurRadius: 8,
                    spreadRadius: 4,
                  ),
                ],
              ),
              child: Center(
                child: Transform.scale(
                  scale: 1 + (_buttonAnimationController.value * 0.05), // Scaling animation
                  child: Text(
                    'Calculate',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildFunFact() {
    // Display a fun fact or personalized feedback here after the calculation
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Did you know? A 1 kg reduction in carbon emissions is equivalent to planting a tree!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            color: Colors.green[700],
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}
