import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/fonts.dart';
import '../../../core/widgets/CustomTextField.dart';
import '../../../core/widgets/custom_button.dart';
import 'Login.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});




  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword>
{


bool _obscureNewPassword = true;
bool _obscureConfirmPassword = true;
final TextEditingController _passwordController = TextEditingController();
final TextEditingController _confirmPasswordController = TextEditingController();
void _showConfirmationDialog() {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(

        title: Text('Password Changed Successfully'),
        content: Text('You can now log in again!'),
        actions: [
          Center(
            child: CustomButton(text: "Login",  onPressed: () {
              Navigator.of(context).pop();
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Login(), // Replace with your LoginScreen
                ),
              );
            }, ),
          ),
        ],
      );
    },
  );
}

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: AppColors.backGround,
body: Center(
child: Column( mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Image.asset('assets/images/auth_vector.png'),

Padding(
padding: const EdgeInsets.only(top: 30.4),
child: SizedBox( height: 400,
child: Card(
color: AppColors.secondaryPurple,
shape: const RoundedRectangleBorder(
borderRadius: BorderRadius.only(
topLeft: Radius.circular(30),
topRight: Radius.circular(30),
),
),
child: Padding(
padding: const EdgeInsets.all(20.0),
child: Column(

children: [
Text(
"Set New Password",
style: AppFonts.textStyle20black,
),
SizedBox(height: 20.0),
CustomTextFormField(
hintText: "New Password",
icon: Icons.lock,
obscureText: _obscureNewPassword,
validator: (value) {
return value?.isEmpty ?? true ? "Please enter a new password" : null;
},
),
SizedBox(height: 20.0),
CustomTextFormField(
hintText: "Confirm Password",
icon: Icons.lock,
obscureText: _obscureConfirmPassword,
validator: (value) {
if (value?.isEmpty ?? true) {
return "Please confirm your new password";
} }
),
SizedBox(height: 20.0),
CustomButton(
text: "Confirm",
onPressed: () {
  if (_passwordController.text == _confirmPasswordController.text) {
    _showConfirmationDialog();
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Passwords do not match or are too weak'),
      ),
    );
  }
}
),
],
),
),
),
),
),
],
),
),
);
}
}