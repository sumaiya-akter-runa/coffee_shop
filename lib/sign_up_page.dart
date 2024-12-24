import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SignUpPage(),
  ));
}

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  Widget buildTextField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    TextInputType inputType = TextInputType.text,
  }) {
    return TextFormField(
      controller: controller,
      style: TextStyle(color: Colors.white), // Input text color
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.white), // Label text color
        prefixIcon: Icon(icon, color: Colors.white), // Icon color
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white), // White border when not focused
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white), // White border when focused
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        fillColor: Colors.transparent, // Transparent background
      ),
      keyboardType: inputType,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your $label';
        }
        return null;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.asset(
            'assets/account.jpg', // Replace with your image path
            fit: BoxFit.cover,
          ),
          // Dark Overlay for better contrast
          Container(
            color: Colors.black.withOpacity(0.5),
          ),
          // Form and content on top of the background
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 80), // Space at the top of the form
                      // Heading "Create Account"
                      Text(
                        "Create Account",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 30), // Space after the heading

                      // Name Input
                      buildTextField(
                        controller: _nameController,
                        label: "Name",
                        icon: Icons.person,
                      ),
                      SizedBox(height: 20),

                      // Email Input
                      buildTextField(
                        controller: _emailController,
                        label: "Email",
                        icon: Icons.email,
                      ),
                      SizedBox(height: 20),

                      // Phone Number Input
                      buildTextField(
                        controller: _phoneController,
                        label: "Phone Number",
                        icon: Icons.phone,
                        inputType: TextInputType.phone,
                      ),
                      SizedBox(height: 20),

                      // Address Input
                      buildTextField(
                        controller: _addressController,
                        label: "Address",
                        icon: Icons.home,
                      ),
                      SizedBox(height: 40),

                      // Sign Up Button
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFB8200).withOpacity(0.7),
                          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            // Proceed with the sign-up process
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Sign Up Successful')),
                            );
                          }
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 20),

                      // Social Media Login Section
                      Text("Or sign up with:", style: TextStyle(color: Colors.white)),
                      SizedBox(height: 20),

                      // Social Media Buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Google Button
                          GestureDetector(
                            onTap: () {
                              // Add Google sign-up logic
                              print('Google Sign-Up');
                            },
                            child: Image.asset(
                              'assets/google.png', // Replace with your image path
                              height: 50,
                              width: 50,
                            ),
                          ),
                          SizedBox(width: 20),

                          // Facebook Button
                          GestureDetector(
                            onTap: () {
                              // Add Facebook sign-up logic
                              print('Facebook Sign-Up');
                            },
                            child: Image.asset(
                              'assets/facebook.png', // Replace with your image path
                              height: 50,
                              width: 50,
                            ),
                          ),
                          SizedBox(width: 20),

                          // Instagram Button
                          GestureDetector(
                            onTap: () {
                              // Add Instagram sign-up logic
                              print('Instagram Sign-Up');
                            },
                            child: Image.asset(
                              'assets/instagram.png', // Replace with your image path
                              height: 50,
                              width: 50,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
