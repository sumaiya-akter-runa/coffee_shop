import 'package:flutter/material.dart';

class AdminSignUp extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Admin Sign-Up"),
        backgroundColor: Color(0xFF3A1111),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: "Email"),
              keyboardType: TextInputType.emailAddress,
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: "Password"),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFFB8200)),
              onPressed: () {
                // Save admin credentials (in production, use Firebase/Auth system)
                Navigator.pushNamed(context, '/admin-signin');
              },
              child: const Text("Sign Up"),
            ),
          ],
        ),
      ),
    );
  }
}
