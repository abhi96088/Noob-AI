import 'dart:async';

import 'package:flutter/material.dart';
import 'package:noob/chat_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ChatScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/chatbot.png", width: 100, height: 100,),
            SizedBox(height: 10,),
            Text("Noob AI", style: TextStyle(fontSize: 30, color: Colors.blueAccent, fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
