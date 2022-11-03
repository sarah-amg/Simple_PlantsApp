import 'package:flutter/material.dart';
import 'package:plant_app/screens/datails/components/detail_screen.dart';
import 'RecomendedPlant.dart';


class RecomndsPlantsRow extends StatelessWidget {
  const RecomndsPlantsRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendedPlant(
            image: "assets/images/plant1.png",
            title: "Samantha",
            country: "Russia",
            price: 40,
            onPressed: () {
              Navigator.push(
                context,
                 MaterialPageRoute(
                  builder: (context) => DetailScreen(),),
                  );
            },
          ),
          RecomendedPlant(
            image: "assets/images/plant2.png",
            title: "Samantha",
            country: "Russia",
            price: 440,
            onPressed: () {
              Navigator.push(
                context,
                 MaterialPageRoute(
                  builder: (context) => DetailScreen(),),
                  );
            },
          ),
          RecomendedPlant(
            image: "assets/images/plant3.png",
            title: "Samantha",
            country: "Russia",
            price: 440,
            onPressed: () {},
          ),
          RecomendedPlant(
            image: "assets/images/plant4.png",
            title: "Samantha",
            country: "Russia",
            price: 440,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
