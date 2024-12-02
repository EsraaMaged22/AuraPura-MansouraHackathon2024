
import 'package:aura_pura/features/splash/third_screen.dart';
import 'package:flutter/material.dart';
import '../../core/constants/colors.dart';
import '../../core/constants/fonts.dart';
import '../../core/widgets/custom_button.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: SafeArea(
        child: Column(
        children: [
          SizedBox(height: 19.5),
          Align( alignment : Alignment.center,child: Image.asset('assets/images/splash2.png',width: 290,)),
          Text(
            'Empower',
            style: AppFonts.headlineTextStyle,
          ),
          SizedBox(height: 5),
          Text(
            'we guide you through\n personalized mental health plans\n tailored towards a healthier and happier you.',
            style: AppFonts.textStyle16black,
          ),
          SizedBox(height: 20),
          CustomButton(
            text: 'Next',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ThirdScreen(),
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
