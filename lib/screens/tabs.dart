import 'package:car_rental_demo/screens/home_screen.dart';
import 'package:car_rental_demo/styles/colors.dart';
import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomeScreen(),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          selectedItemColor: primary,
          unselectedItemColor: grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.location_on,
              ),
              label: "Branches",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.bike_scooter_rounded,
              ),
              label: "Vehicles",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_sharp,
              ),
              label: "Account",
            )
          ]),
    );
  }
}
