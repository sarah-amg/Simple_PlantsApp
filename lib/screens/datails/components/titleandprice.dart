import 'package:flutter/material.dart';

import '../../../constants.dart';


class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key? key, required this.title, required this.cuntry, required this.price,
  }) : super(key: key);


  final String title , cuntry;
  final int price;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          RichText(
            text: TextSpan(children: [
              TextSpan(
                text: title,
                style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: kTextColor, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                  text: "\n $cuntry",
                  style: TextStyle(
                      fontSize: 20,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold))
            ]),
          ),
          Spacer(),
          Text(
            "\$$price",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(color: kPrimaryColor),
          )
        ],
      ),
    );
  }
}
