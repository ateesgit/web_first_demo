import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width*.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                  //  image
                    Image.asset(
                        "images/admin.png"
                    ),
                  ],
                ),
              ),
            )
        ],
      ),
    );
  }
}
