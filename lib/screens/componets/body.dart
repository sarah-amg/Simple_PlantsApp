import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import '../../widget/FeaturedPlantesBtn.dart';
import '../../widget/HeaderandSearchBox.dart';
import '../../widget/RecomndsPlantsRow.dart';
import '../../widget/TitleWithBtn.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderandSearchBox(size: size), //1
          TitleWithBtn( title: "Recomended", onPressed: () { //2
            //  Navigator.push(
            //     context,
            //      MaterialPageRoute(
            //       builder: (context) => DetailScreen(),),
            //       );
          },),
          const RecomndsPlantsRow(),//3
          TitleWithBtn( title: "Featured Plantes",onPressed: () {},),//4
         const FeaturedPlantesBtn(),//5
         const  SizedBox(height: kDefaultPadding,),//6
        ],
      ),
    );
  }
}
