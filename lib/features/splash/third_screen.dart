
import 'package:aura_pura/features/splash/first_screen.dart';
import 'package:flutter/material.dart';
import '../../core/constants/colors.dart';
import '../../core/constants/fonts.dart';
import '../../core/widgets/custom_button.dart';
import '../auth/login/login.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: SafeArea(
        child: Column(
        children: [
          SizedBox(height: 104.5),
          Align( alignment : Alignment.center,child: Image.asset('assets/images/splash3.png',width: 300,)),
          Text(
              'Connect',
              style:AppFonts.headlineTextStyle
          ),
          SizedBox(height: 5),
          Text(
            'with a supportive community and\nconsultant share your experiences\n with others',
            style: AppFonts.textStyle16black,
          ),
          SizedBox(height: 5),
          CustomButton(
            text: 'Get Started',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Login(),
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
