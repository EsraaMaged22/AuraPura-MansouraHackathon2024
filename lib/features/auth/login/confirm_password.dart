import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/fonts.dart';
import '../../../core/widgets/custom_button.dart';
import '../../home/welcometogame.dart';
import 'login.dart';

class ConfirmPassword extends StatelessWidget {
  const ConfirmPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColors.backGround,
      body: Center(
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/verification.png',width: 100,height: 100,)
            ,Text('The password changed \n \t        successfully!',style: AppFonts.textStyle20black),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text('you can now log In again !',style: AppFonts.textStyle14gray),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: CustomButton(text: 'Get Started', onPressed:()
              {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> const Login()));
              }),
            )],),

      ),);
  }
}
