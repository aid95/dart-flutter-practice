import 'package:dart_flutter_practice/components/button.dart';
import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign In',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        elevation: 0.2,
      ),
      body: _buildButtons(),
    );
  }
}

Widget _buildButtons() {
  return Padding(
    padding: EdgeInsets.all(16.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SignInButton(
            image: Image.asset("assets/images/glogo.png"),
            text: Text(
              "Login with Google",
              style: TextStyle(color: Colors.black54, fontSize: 15.0),
            ),
            primaryColor: Colors.white,
            radius: 4.0,
            onPressed: () {},
            onPrimaryColor: Colors.white54),
        SizedBox(
          height: 10,
        ),
        SignInButton(
            image: Image.asset("assets/images/flogo.png"),
            text: Text(
              "Login with Facebook",
              style: TextStyle(color: Colors.white, fontSize: 15.0),
            ),
            primaryColor: Colors.blueAccent,
            radius: 4.0,
            onPressed: () {},
            onPrimaryColor: Colors.white54),
        SizedBox(
          height: 10,
        ),
        SignInButton(
            image: Icon(
              Icons.email,
              color: Colors.white,
            ),
            text: Text(
              "Login with Email",
              style: TextStyle(color: Colors.black54, fontSize: 15.0),
            ),
            primaryColor: Colors.green,
            radius: 4.0,
            onPressed: () {},
            onPrimaryColor: Colors.white54)
      ],
    ),
  );
}
