import 'package:aura_pura/core/constants/fonts.dart';
import 'package:flutter/material.dart';

class MyGoalsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Goals",style: AppFonts.textStyle20black,),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Image.asset("assets/images/goals.png"),
     
    );
  }
}

