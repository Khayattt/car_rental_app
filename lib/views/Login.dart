import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:car_rental_app/views/Home.dart';
import 'package:car_rental_app/FirestoreService.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            Align(
               alignment: Alignment.centerLeft,
              child: Text(
                'Welcome to Car Rental App',
                style: TextStyle(
                  fontSize: 24.0, 
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
              
            Padding(
             padding: const EdgeInsets.only(bottom:200.0),
              child: Align(
                 alignment: Alignment.centerLeft,
                child: Text(
                  'Please enter you credentials',
                  style: TextStyle(
                    fontSize: 16.0, 
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _login,
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }

  void _login() async {
    String email = _emailController.text;
    String password = _passwordController.text;
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      print("User logged in: ${userCredential.user?.email}");
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } catch (e) {
      print("Error: $e");
    }
  }
}
