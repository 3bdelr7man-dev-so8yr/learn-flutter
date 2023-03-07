import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Login',
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),),
            const SizedBox(
              height: 40.0,
            ),
            TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: "Email Address",
                prefixIcon: Icon(
                  Icons.email,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextFormField(
              controller: passwordController,
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Email Address",
                prefixIcon: Icon(
                  Icons.lock,
                ),
                suffix: Icon(
                  Icons.remove_red_eye
                ),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Container(
              width: double.infinity,
              color: Colors.blue,
              child: MaterialButton(
                onPressed: () {
                  if (kDebugMode) {
                    print(emailController.text);
                  }
                  if (kDebugMode) {
                    print(passwordController.text);
                  }
                },
                child: const Text(
                 'Login',
                  style: TextStyle(
                    color: Colors.white
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

