import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class AuthHelper {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<String?> signUp(String email, String password) async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return null;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return 'Account with this username is already registered.';
      } else {
        return 'Failed to create account. Please try again later.';
      }
    } catch (e) {
      return 'Error: $e';
    }
  }

  Future<String?> signIn(String email, String password) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return null;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password') {
        return 'Password is wrong.';
      } else if (e.code == 'user-not-found') {
        return 'Account with this username does not exist.';
      } else {
        return 'Failed to sign in. Please try again later.';
      }
    } catch (e) {
      return 'Error: $e';
    }
  }
}

class LoginPage extends StatelessWidget {
  final AuthHelper _authHelper = AuthHelper();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _handleSignUp(BuildContext context) async {
    String? errorMessage = await _authHelper.signUp(
      _emailController.text,
      _passwordController.text,
    );

    if (errorMessage == null) {
      // Account created successfully
      _showMessage(context, 'Account with this username is made');
    } else {
      _showMessage(context, errorMessage);
    }
  }

  Future<void> _handleSignIn(BuildContext context) async {
    String? errorMessage = await _authHelper.signIn(
      _emailController.text,
      _passwordController.text,
    );

    if (errorMessage == null) {
      // Logged in successfully
      _showMessage(context, 'Logged in successfully');
    } else {
      _showMessage(context, errorMessage);
    }
  }

  void _showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(title: Text('Login')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                ),
                obscureText: true,
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () => _handleSignUp(context),
                child: Text('Sign Up'),
              ),
              ElevatedButton(
                onPressed: () => _handleSignIn(context),
                child: Text('Sign In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Login',
      theme: ThemeData.dark(),
      home: LoginPage(),
    );
  }
}
