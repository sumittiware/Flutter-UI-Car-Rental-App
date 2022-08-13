import 'package:car_rental_demo/data/car_data.dart';
import 'package:car_rental_demo/styles/text_style.dart';
import 'package:flutter/material.dart';

class TypeCard extends StatelessWidget {
  final Category category;

  const TypeCard({required this.category, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 160,
      color: Colors.transparent,
      child: Center(
        child: Stack(
          children: [
            Container(
              height: 150,
              width: 140,
              decoration: BoxDecoration(
                color: const Color(0xff304FFE),
                borderRadius: BorderRadius.circular(16),
              ),
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              padding: const EdgeInsets.only(
                top: 90,
              ),
              child: Text(
                "${category.type}\n${category.avaliablity}",
                style: typeStyle,
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: -10,
              left: -10,
              child: Image.asset(
                category.image,
                height: 150,
                width: 150,
              ),
            )
          ],
        ),
      ),
    );
  }
}
