import 'package:flutter/material.dart';
import 'constants.dart';

class bottomNavigationBar extends StatelessWidget {
  const bottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding *2,
        bottom: 10,

      ),
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38)
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.photo, size: 25, color: kPrimaryColor,)),
                IconButton(onPressed: () {}, icon: Icon(Icons.star, size: 25, color: kPrimaryColor),),
                IconButton(onPressed: () {}, icon: Icon(Icons.person, size: 25, color: kPrimaryColor),),
              ],
            ),
    );
  }
}