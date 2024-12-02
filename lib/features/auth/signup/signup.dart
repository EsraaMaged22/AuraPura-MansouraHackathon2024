
import 'package:aura_pura/features/auth/login/login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/fonts.dart';
import '../../../core/widgets/CustomTextField.dart';
import '../../../core/widgets/custom_button.dart';
import '../../home/welcometogame.dart';
import '../login/forget_password.dart';
import 'account_verification/otp.dart';


class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _LoginState();
}

class _LoginState extends State<SignUp> {
  late var agreeTerm=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: AppColors.backGround,
      body: Center(
        child: Column(
            children: [Image.asset('assets/images/auth_vector.png'),


              Padding(
                padding: const EdgeInsets.only( top :12.4),
                child: SizedBox(  child: Card( color: AppColors.secondaryPurple,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.only(top:12),
                    child:   Column(
                      children: [ Text("Create an account",style: AppFonts.textStyle20black),
                        SizedBox(height: 5,),
                        Text("Welcome ",style: AppFonts.textStyle16gray),
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.only(top: 6,bottom: 8.0),
                          child: const CustomTextFormField(
                            hintText: "Full name",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6,bottom: 8.0),
                          child: const CustomTextFormField(
                            hintText: "Email",
                          ),
                        ),
                        const CustomTextFormField(
                          hintText: "Password",
                          icon: Icons.lock,
                          obscureText: true,
                        ),
                        Padding(
                          padding: const EdgeInsets.only( bottom: 15),
                          child: Column( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [ Checkbox(value: agreeTerm, onChanged: (bool? value) {
                                  setState(() {
                                    agreeTerm = value! ;
                                  });
                                },
                                  activeColor: AppColors.gray,
                                  side: BorderSide( color: AppColors.gray),
                                ),
                                  RichText(
                                    text: TextSpan(
                                      text: "I agree to the ",
                                      style: GoogleFonts.workSans( fontSize: 13,fontWeight: FontWeight.w500,
                                        color: AppColors.gray,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'term of used',
                                          style: GoogleFonts.workSans( fontSize: 13,fontWeight: FontWeight.w500,
                                            color: AppColors.gray,
                                            decoration: TextDecoration.underline,
                                          ),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              print('term of use');
                                            },
                                        ),
                                      ],
                                    ),



                                  ),
                                ],
                              ),
                            ],
                          ),
                        ) ,
                        CustomButton(text: "Create an account", onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>Otp(),
                            ),
                          );
                        }
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10 ,right: 40,left: 40),
                          child: Row(
                            mainAxisAlignment:MainAxisAlignment.center ,children: [
                            const Expanded(child: Divider( thickness: 0.7, color: AppColors.gray)),
                            Text('Or continue with' ,style:AppFonts.textStyle16gray),
                            const Expanded(child: Divider( thickness: 0.7, color: AppColors.gray)),
                          ],),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container( height:20,child: Image.asset("assets/images/facebook.png")),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container( height:20,child: Image.asset("assets/images/apple.png")),
                              ),
                              Container( height:20,child: Image.asset("assets/images/google.png")),
                              const SizedBox(width: 20,),

                            ],),
                        ),
                        RichText(
                          text: TextSpan(
                            text: "Already have an account? ",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                            children: [
                              TextSpan(
                                text: 'Sign Up',
                                style: const TextStyle(
                                  color: AppColors.primaryPurple,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () { Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Login(),
                                    ),
                                  );
                                  print('login tapped');
                                  },
                              ),
                            ],
                          ),



                        )
                      ],
                    ),
                  ),
                ),

                ),
              ),

            ]
        )

        ,
      ),
    ) ;
  }
}


