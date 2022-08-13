import 'package:car_rental_demo/screens/tabs.dart';
import 'package:car_rental_demo/styles/colors.dart';
import 'package:car_rental_demo/styles/text_style.dart';
import 'package:car_rental_demo/utils.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 200,
            ),
            child: Image.asset(
              "$assetPath/bg_image.png",
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  primary,
                  Colors.transparent,
                  primary,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Container(
            height: getHeight(context),
            width: getWidth(context),
            padding: const EdgeInsets.only(top: 70),
            child: Column(
              children: [
                Image.asset(
                  "$assetPath/logo.png",
                  height: 160,
                  width: 130,
                ),
                const SizedBox(
                  height: 8,
                ),
                Image.asset(
                  "$assetPath/name.png",
                  width: 150,
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 16,
                  ),
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      alignLabelWithHint: true,
                      hintText: 'Sumit Tiware',
                      contentPadding: const EdgeInsets.all(15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(74),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: white,
                      focusColor: white,
                      filled: true,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 16,
                  ),
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      alignLabelWithHint: true,
                      hintText: '********',
                      contentPadding: const EdgeInsets.all(15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(74),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: white,
                      focusColor: white,
                      filled: true,
                    ),
                  ),
                ),
                const Text(
                  "Forget Password",
                  style: forgetStyle,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) {
                          return const Tabs();
                        },
                      ),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    margin: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: black, borderRadius: BorderRadius.circular(74)),
                    alignment: Alignment.center,
                    child: const Text(
                      "LOG IN",
                      style: loginStyle,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
