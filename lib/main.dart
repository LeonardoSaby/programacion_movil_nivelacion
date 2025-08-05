import 'package:flutter/material.dart';
import 'package:programacion_movil_nivelacion/screens/splash_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nivelacion Programacion',
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      home: SplashScreen(),
    );
  }
}
