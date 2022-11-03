import 'package:flutter/material.dart';
import '../constants.dart';


class RecomendedPlant extends StatelessWidget {
   RecomendedPlant({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    required this.country,
    required this.onPressed,
  }) : super(key: key);

final String image, title, country;
final int price;
Function() onPressed;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
     margin:const EdgeInsets.only(
       left: kDefaultPadding, 
       top: kDefaultPadding / 2,
       bottom: kDefaultPadding * 2.5),
     width: size.width * 0.4,
     child: Column(
       children: [
         Image.asset(
          image, 
          fit: BoxFit.fill,
          ),

         InkWell(
          onTap: onPressed,
           child: Container(
           padding: const EdgeInsets.all(kDefaultPadding / 2),
           decoration: BoxDecoration(
             borderRadius: const BorderRadius.only(
               bottomLeft: Radius.circular(10),
               bottomRight: Radius.circular(10)),
             color: Colors.white,
             boxShadow: [
               BoxShadow(
                 offset:const Offset(0, 10),
                 blurRadius: 50,
                 color: kPrimaryColor.withOpacity(0.23),
               ),
             ],
           ),

           child: Row(
             children: [
               RichText(
                 text: TextSpan(
                 children:[
                   TextSpan( 
                   text:"$title".toUpperCase(),
                   style: Theme.of(context).textTheme.button
                   ),
                   TextSpan(
                   text: "\n $country".toUpperCase(),
                   style: TextStyle(color: kPrimaryColor.withOpacity(0.5),
                   ),
                   ),
                 ] 
               ),
               ),

               Spacer(),
               
                 Text('\$$price', 
                  style: Theme.of(context)
                  .textTheme
                  .button!
                  .copyWith(color: kPrimaryColor),
                   ),
             ],
           ),
           ),
         ),
       ],
     ),
    );
  }
}
