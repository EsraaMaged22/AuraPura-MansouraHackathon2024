import 'package:aura_pura/features/splash/second_screen.dart';
import 'package:flutter/material.dart';


import '../../core/constants/colors.dart';
import '../../core/constants/fonts.dart';
import '../../core/widgets/custom_button.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Skip',
                  style: AppFonts.textStyle14gray,

                ),
                SizedBox(width: 10)  ],
            ),
            Align( alignment : Alignment.center,child: Image.asset('assets/images/splash1.png',width: 290,)),
            Text(
              'Heal',
              style:AppFonts.headlineTextStyle,
            ),

            SizedBox(height: 5),
            Text(
              'Let’s heal your inner self and body\n and find peace through a variety of \ntherapeutic techniques.',
              style: AppFonts.textStyle16black,
            ),
            SizedBox(height: 20),
            CustomButton(
              text: 'Next',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
