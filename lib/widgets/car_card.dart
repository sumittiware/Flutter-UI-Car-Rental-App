import 'package:car_rental_demo/data/car_data.dart';
import 'package:car_rental_demo/styles/text_style.dart';
import 'package:flutter/material.dart';

class CarCard extends StatelessWidget {
  final Model model;
  const CarCard({
    required this.model,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(24),
      height: 370,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      model.brand,
                      style: brandNameStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      model.model,
                      style: carNameStyle,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "\$${model.rate}",
                      style: rateStyle,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      "/month",
                      style: rateUnitStyle,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Engine",
                  style: enginStyle,
                ),
                Text(
                  model.description,
                  style: enginStyle,
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/images/m0.png',
            height: 200,
            width: 300,
          )
        ],
      ),
    );
  }
}
