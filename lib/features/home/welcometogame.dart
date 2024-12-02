import 'package:aura_pura/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../core/constants/fonts.dart';

class WelcomToGame extends StatefulWidget {
  const WelcomToGame({super.key});

  @override
  State<WelcomToGame> createState() => _WelcomToGameState();
}

class _WelcomToGameState extends State<WelcomToGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 167),
        child: Column( mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          Text("Welcome..",style: AppFonts.headlineTextStyle),
              SizedBox(height: 20,),
              Text("Your safe space starts here.\nLet's take a moment for yourself and\nplay this simple game of hope.",style:AppFonts.textStyle16black,),

           Padding(
             padding: const EdgeInsets.only(top: 20,left: 8),
             child: CustomButton(text: "Start now", onPressed: () {}
             ),
           ) ,
              Align( alignment: Alignment.bottomCenter
                  ,child: Image.asset('assets/images/home_img.png',width: 200,)),
            ]),
      ),
    );
  }
}
