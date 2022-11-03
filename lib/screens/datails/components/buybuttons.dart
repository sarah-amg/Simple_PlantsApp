import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';


class BuyButtons extends StatelessWidget {
  const BuyButtons({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
  Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: size.width / 2,
          height: 60,
          child: MaterialButton(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
              )
            ),
            color: kPrimaryColor,
            onPressed: () {
            
          }, 
          child: const Text("Buy Now",
          style: TextStyle(
          color: Colors.white,
          fontSize: 16),
          ),
          ),
        ),
        Expanded(
          child: MaterialButton(
            onPressed: () {
        },
        child: const Text("Description"),),
        ),
      ],
    );
  }
}