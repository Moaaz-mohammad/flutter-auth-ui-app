import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/screens/login.dart';
import 'package:flutter_auth_ui/widgets/CustomButtonCuntainer.dart';
import 'package:flutter_auth_ui/widgets/CustomTextField.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/Sign-up.png'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Sign up',
              style: GoogleFonts.rubik(
                textStyle: TextStyle(fontSize: 38, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Gap(5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Image.asset('assets/under-line.png', width: 74),
          ),
          CustomTextfield(
            name: 'Email',
            hintText: 'demo@email.com',
            suffixIcon: Icons.email_outlined,
          ),
          Gap(5),
          CustomTextfield(
            name: 'Phone no',
            hintText: '+00 000-0000-000',
            suffixIcon: Icons.phone_android_outlined,
          ),
          Gap(5),
          CustomTextfield(
            name: 'Password',
            hintText: 'Enter your password',
            suffixIcon: Icons.visibility,
          ),
          Gap(5),
          CustomTextfield(
            name: 'Confirm Password',
            hintText: 'Confirm your password',
            suffixIcon: Icons.visibility,
          ),
          Gap(18),
          Custombuttoncuntainer(text: 'Create Account'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an Account!',
                style: TextStyle(
                  color: Color(0xff616161),
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
              Gap(5),
              GestureDetector(
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (c) => SignIn()),
                  ),
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Color(0xffFF8383),
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
