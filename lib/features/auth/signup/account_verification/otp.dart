import 'package:aura_pura/features/auth/login/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/fonts.dart';
import '../../../../core/widgets/custom_button.dart';
import '../signup.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme=PinTheme(width: 50,height: 50 ,
        textStyle: TextStyle(color: AppColors.primaryPurple ,fontSize: 24),
    decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2),borderRadius: BorderRadius.circular(8),border: Border.all(color: AppColors.primaryPurple),
    ));
    return Scaffold(
      backgroundColor: AppColors.backGround ,
      body: Column(
        children: [  Image.asset('assets/images/auth_vector.png'),
          Padding(
            padding: const EdgeInsets.only(top:35.4),
            child: SizedBox(
              child: Card( color: AppColors.secondaryPurple,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                child: Padding(
                  padding: const EdgeInsets.only(top:60),
                  child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Center(child: Text('Your account must be \n           verified',style: AppFonts.textStyle20black,)),
                        ),

                      Padding(
                        padding: const EdgeInsets.only(top: 40,left: 15),
                        child: Text('Please enter the 5-digit code , we sent to your email ',style: AppFonts.textStyle16gray,),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 15,right:30,bottom: 30),
                        child: Text('hello',style: GoogleFonts.workSans(fontSize: 16,fontWeight: FontWeight.w400,color: AppColors.primaryPurple ),),
                      ),

                      Center(
                        child: Container(
                          child: Pinput(defaultPinTheme: defaultPinTheme,length: 5,),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 10,right: 10,bottom: 20),
                        child: CustomButton(text: ' Verify', onPressed: ()
                        { Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));

                        } ),
                      ),

                      Center(
                        child: Column(
                          children: [
                            Text('Resend again? ',style: AppFonts.textStyle16gray,),
                            Text('Request new code in ... ',style: AppFonts.textStyle14gray,),
                          ],
                        ),
                      ),

                    ],),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

