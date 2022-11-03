import 'package:flutter/material.dart';

import 'FeaturedPlantes.dart';

class FeaturedPlantesBtn extends StatelessWidget {
  const FeaturedPlantesBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedPlantes(
          image: "assets/images/plant6.png",
          onPreesd: () {},
          ),
          FeaturedPlantes(
          image: "assets/images/pic6.png",
          onPreesd: () {},
          ),
          FeaturedPlantes(
          image: "assets/images/pic7.png",
          onPreesd: () {},
          ),
          FeaturedPlantes(
          image: "assets/images/pic4.png",
          onPreesd: () {},
          ),
        ],
      ),
    );
  }
}
