import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:splashscreens/Dashboard.dart';
class BuiltInSplashScreen extends StatefulWidget {
  @override
  _BuiltInSplashScreenState createState() => _BuiltInSplashScreenState();
}

class _BuiltInSplashScreenState extends State<BuiltInSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: SplashScreen(
           seconds: 4,
           backgroundColor: Colors.black87,
           navigateAfterSeconds: Dashboard(),
           loadingText: Text("Builtin Widget\n   Version1.0",style:TextStyle(color: Colors.white70)),
           title:Text("Widget SScreen",
                style: TextStyle(color: Colors.white70,
                fontSize: 38.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
                ),
         ),
           
        
         
       );
  }
}