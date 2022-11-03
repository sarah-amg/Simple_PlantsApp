import 'package:flutter/material.dart';
import 'package:plant_app/screens/componets/body.dart';
import 'package:plant_app/screens/datails/components/bodyV.dart';
class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:BodyV() ,
    );
  }
}