import 'package:flutter/material.dart';
import '../constants.dart';

class HeaderandSearchBox extends StatelessWidget {
  const HeaderandSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only( 
      bottom: kDefaultPadding * 2.5),
      height: size.height * 0.2,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 36 + kDefaultPadding,
            ),
            height: size.height * 0.2 - 27,
            decoration:const  BoxDecoration(
                color: kPrimaryColor,
                borderRadius:
                    BorderRadius.only(
                      bottomLeft: Radius.circular(36),
                      bottomRight: Radius.circular(36),
                ),
           ),

           child: Row(
            children: [
              Text("Hi Sarah!",
              style: Theme.of(context).textTheme.headline5!.copyWith(
                color: Colors.white, 
                fontWeight:FontWeight.bold ),
              ),
              Spacer(),
              const CircleAvatar(
                // backgroundColor: Colors.black ,
                backgroundImage: AssetImage("assets/images/plant.png"),
              ),
            ],
           ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            height: 54,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                offset: Offset(0,10),
                blurRadius: 100,
                color: kPrimaryColor.withOpacity(0.23)
              ),
              ]
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(color: kPrimaryColor.withOpacity(0.5),
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      suffixIcon: IconButton(
                        icon: Icon(Icons.search , 
                        color: kPrimaryColor,), 
                        onPressed:() {
                        
                      }, )
                    ),
                  ),
                ),
              ],
            ),
            )
           )
        ],
      ),
    );
  }
}
