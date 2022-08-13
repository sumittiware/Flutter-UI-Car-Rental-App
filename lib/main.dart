import 'package:car_rental_demo/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Car Rental UI',
      theme: ThemeData(
        fontFamily: "Poppins",
      ),
      home: const LoginScreen(),
    );
  }
}
