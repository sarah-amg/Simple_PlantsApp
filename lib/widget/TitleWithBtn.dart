import 'package:flutter/material.dart';
import '../constants.dart';
import 'TitlewithCustomUnderLine.dart';


class TitleWithBtn extends StatelessWidget {
   TitleWithBtn({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  final String title;
   final Function()  onPressed;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding ),
      child: Row(
        children:  [
           TitlewithCustomUnderLine( text: title),
          const Spacer(),
          MaterialButton(
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
           color: kPrimaryColor,
           child:  Text("More", 
           style: TextStyle(
           color: Colors.white),
           ),
           onPressed: onPressed ) 
        ],
      ),
    );
  }
}
