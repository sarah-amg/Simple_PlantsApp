import 'package:flutter/material.dart';
import '../constants.dart';


class FeaturedPlantes extends StatelessWidget {
  const FeaturedPlantes({
    Key? key,
    required this.image,
    required this.onPreesd,
  }) : super(key: key);
 
 final String image;
 final Function() onPreesd;

  @override
  Widget build(BuildContext context) {
  Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPreesd,
      child: Container(
        margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding /2 ,
          bottom: kDefaultPadding /2 ,
           
    
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          // color: Colors.black,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(image)
            ,)
        ),
      ),
    );
  }
}
