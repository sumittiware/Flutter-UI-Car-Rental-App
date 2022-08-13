import 'package:car_rental_demo/data/car_data.dart';
import 'package:car_rental_demo/styles/colors.dart';
import 'package:car_rental_demo/styles/text_style.dart';
import 'package:car_rental_demo/utils.dart';
import 'package:car_rental_demo/widgets/car_card.dart';
import 'package:car_rental_demo/widgets/type_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).padding.top,
              ),
              Container(
                height: 50,
                width: getWidth(context),
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(74),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Search for a car",
                      style: searchText,
                    ),
                    Icon(Icons.search),
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: categories
                      .map(
                        (type) => TypeCard(
                          category: type,
                        ),
                      )
                      .toList(),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8,
                ),
                child: Text(
                  "Avaliable vehicles",
                  style: searchText,
                ),
              ),
              ...List.generate(
                models.length,
                (index) => CarCard(
                  model: models[index],
                ),
              )
            ],
          )),
    );
  }
}
