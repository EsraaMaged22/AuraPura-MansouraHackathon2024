
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/fonts.dart';
import '../../../core/widgets/CustomTextField.dart';
import '../../../core/widgets/custom_button.dart';
import '../../home/welcometogame.dart';
import '../signup/signup.dart';
import 'forget_password.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late var rememberPassword=false;

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
                  padding: const EdgeInsets.only(top:74),
                  child:   Column(
                    children: [ Text("Login",style: AppFonts.textStyle20black),
                    SizedBox(height: 5,),
                    Text("Hello Welcome back, You’re been missed",style: AppFonts.textStyle16gray),
                      SizedBox(height: 5,),
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
                            Row(children: [
                              Checkbox(value: rememberPassword, onChanged: (bool? value) {
                                setState(() {
                                  rememberPassword = value! ;
                                });
                              },
                                activeColor: AppColors.primaryPurple,
                                side: const BorderSide( color: AppColors.gray ),
                              ),
                              Text('Remember me',style: AppFonts.textStyle14gray),

                              Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: TextButton(onPressed: ()
                                {
                                  Navigator.push(context,MaterialPageRoute(builder: (context)=>ForgetPassword()));
                                }, child:Text('Forget Password?',style:  AppFonts.textStyle14gray, )),
                              )
                            ],
                            ),
                           ],
                        ),
                      ) ,
                      CustomButton(text: "Log In", onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WelcomToGame(),
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
                          text: "Don't have an account? ",
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
                                    builder: (context) => const SignUp(),
                                  ),
                                );
                                print('Sign Up tapped');
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













