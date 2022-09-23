
import 'dart:async';

import 'package:flutter/material.dart';

import 'homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override

  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    startSplashscreen();
  }
  startSplashscreen() async{
    var duration = const Duration(seconds: 5);
    return Timer(duration, (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_){
        return HomePage();
      }),);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
body: Center(child: CircleAvatar(radius:80,backgroundImage:(NetworkImage('https://i.pinimg.com/736x/de/a0/f3/dea0f3b7f480b1151c08db4a402a43b9.jpgv')
)

)
)

);
}
}