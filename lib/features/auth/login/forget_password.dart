import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/fonts.dart';
import '../../../core/widgets/CustomTextField.dart';
import '../../../core/widgets/custom_button.dart';
import 'account_recovery.dart';
import 'login.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.backGround ,
      body: Column(
        children: [
          Image.asset('assets/images/auth_vector.png'),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Column(
                children: [
                  SizedBox( height: 406,child: Card(  color: AppColors.secondaryPurple,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Column( crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: Text('Forget Password',style: AppFonts.textStyle20black,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20,left: 15,bottom: 30),
                            child: Text('Please enter your email !',style: AppFonts.textStyle16gray,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only( left: 10,right: 10),
                            child: const CustomTextFormField(hintText: 'Enter your email'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
                            child: CustomButton(text: 'Send verification code', onPressed: ()
                            { Navigator.push(context, MaterialPageRoute(builder: (context)=>AccountRecovery()));

                            } ),
                          )

                        ],),
                    ),
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
