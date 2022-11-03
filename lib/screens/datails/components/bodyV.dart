import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';
import 'buybuttons.dart';
import 'imagandIcon.dart';
import 'titleandprice.dart';

class BodyV extends StatelessWidget {
  const BodyV({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(      
      children:[ 
        Column(
        children: const [
          ImageandIcons(),
          TitleAndPrice(
            cuntry: 'Russia',
            title: 'Angelice',
            price: 440,),
          SizedBox(
            height: kDefaultPadding,),
          BuyButtons(),
          // const SizedBox(height: kDefaultPadding * 2)
        ],
      ),
   ] );
  }
}

