import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'iconcard.dart';

class ImageandIcons extends StatelessWidget {
  const ImageandIcons({
    Key? key,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: [
            Expanded(
                child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: kDefaultPadding  * 2
                  ),
                  child: Column(
                    children: [
                         Align(
                          alignment: Alignment.topLeft,
                           child: IconButton(
                            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding ),
                            onPressed: () {
                            Navigator.pop(context);
                                                     }, icon: const Icon(Icons.arrow_back)),
                         ),
                      
                     const Spacer(),
                      IconCard(icon: "assets/icons/sun.svg"),
                      IconCard(icon: "assets/icons/water.svg"),
                      IconCard(icon: "assets/icons/wind.svg"),
                      IconCard(icon: "assets/icons/wind.svg"),
                    ],
                    ),
                ),
              
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius:const BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 60,
                    color: kPrimaryColor.withOpacity(0.29),
                    
                  )
                ],
                image: const DecorationImage(
                  alignment: Alignment.centerLeft,
                  image: AssetImage("assets/images/plant3.png"),
                  fit: BoxFit.cover)),
            )
          ],
        ),
      ),
    );
  }
}