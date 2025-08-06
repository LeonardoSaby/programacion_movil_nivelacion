import 'dart:async';

import 'package:flutter/material.dart';
import 'package:programacion_movil_nivelacion/screens/onboarding_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("images/oso.png"),
            fit: BoxFit.cover,
            opacity: 0.4,
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shopping_cart,
            size: 250,
            color: Colors.white70,),
            Text(
              "Coca Cola",
              style: TextStyle(
                color: Colors.red,
                fontSize:40,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic
              ),)
          ],
        ),
      ),
    );
  }
  @override
  void initState(){
    super.initState();
    Timer(
      Duration(seconds: 3),
        () => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => OnboardingScreen()),
    ));
  }
}